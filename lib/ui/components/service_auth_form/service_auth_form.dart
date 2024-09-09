// Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/locale.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../theme.dart';
import '../widget.dart';
import 'model.dart';

class ServiceAuthForm extends StatefulWidget {
  final TrackingServiceType type;
  final AuthData? initValue;
  final bool isDataSecured;

  const ServiceAuthForm({
    super.key,
    required this.type,
    this.initValue,
    required this.isDataSecured,
  });

  @override
  ServiceAuthFormState createState() => ServiceAuthFormState();
}

class ServiceAuthFormState extends State<ServiceAuthForm> {
  final GlobalKey<_FormState> _formKey = GlobalKey();

  AuthData? buildAuthData() {
    if (!_formKey.currentState!.validate()) {
      return null;
    } else {}
    return buildModelAuthData(
      _formKey.currentState!.controllers,
      widget.type,
    );
  }

  @override
  Widget build(BuildContext context) {
    final fields = buildFormField(
      context: context,
      type: widget.type,
      authData: widget.initValue,
    );
    final helperDescription = buildHelperDescriptionText(context, widget.type);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HelperDescription(text: helperDescription),
        _SecuredDataMessage(isSecured: widget.isDataSecured),
        _Form(key: _formKey, fields: fields),
      ],
    );
  }
}

class _Form extends StatefulWidget {
  final List<AuthFormField> fields;

  const _Form({
    super.key,
    required this.fields,
  });

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  final Map<FormFieldId, TextEditingController> _controllers = {};
  final _formKey = GlobalKey<FormState>();

  Map<FormFieldId, TextEditingController> get controllers => _controllers;

  bool validate() => _formKey.currentState!.validate();

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.fields.length,
        itemBuilder: (context, position) {
          final field = widget.fields[position];
          final controller = _controllers.putIfAbsent(
            field.id,
            () => TextEditingController(text: field.value),
          );

          return _FormFieldInput(
            field: field,
            controller: controller,
          );
        },
        separatorBuilder: (context, position) {
          return const SizedBox(height: 16.0);
        },
      ),
    );
  }
}

class _FormFieldInput extends StatefulWidget {
  final AuthFormField field;
  final TextEditingController? controller;

  const _FormFieldInput({
    required this.field,
    required this.controller,
  });

  @override
  _FormFieldInputState createState() => _FormFieldInputState();
}

class _FormFieldInputState extends State<_FormFieldInput> {
  late bool _secured;

  @override
  void initState() {
    super.initState();

    _secured = widget.field.secured;
  }

  @override
  Widget build(BuildContext context) {
    final field = widget.field;
    final controller = widget.controller;

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: field.name,
        suffixIcon: _buildShowObscuredTextButton(),
      ),
      obscureText: _secured,
      enableSuggestions: !_secured,
      autocorrect: !_secured,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return S.of(context).fieldRequiredError;
        } else {
          return null;
        }
      },
    );
  }

  Widget? _buildShowObscuredTextButton() {
    if (widget.field.secured) {
      return IconButton(
        icon: _secured ? Icon(MdiIcons.eye) : Icon(MdiIcons.eyeOff),
        tooltip: _secured ? S.of(context).show : S.of(context).hide,
        onPressed: () {
          setState(() => _secured = !_secured);
        },
      );
    } else {
      return null;
    }
  }
}

class _HelperDescription extends StatelessWidget {
  final String text;

  const _HelperDescription({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.info_outline,
          color: Theme.of(context).textTheme.bodySmall!.color,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 0.0),
            child: LinkText(text: text),
          ),
        ),
      ],
    );
  }
}

class _SecuredDataMessage extends StatelessWidget {
  final bool isSecured;

  const _SecuredDataMessage({
    required this.isSecured,
  });

  @override
  Widget build(BuildContext context) {
    final icon = _getIcon(context);
    final color = _getColor(context);
    final message = _getMessage(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 0.0),
              child: Text(
                message,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: color),
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIcon(BuildContext context) {
    if (isSecured) {
      return Icons.lock;
    } else {
      return Icons.no_encryption;
    }
  }

  Color _getColor(BuildContext context) {
    if (isSecured) {
      return AppTheme.palette(context).ok;
    } else {
      return Theme.of(context).colorScheme.error;
    }
  }

  String _getMessage(BuildContext context) {
    if (isSecured) {
      return S.of(context).dataIsSecured;
    } else {
      return S.of(context).secureStorageIsNotSupported;
    }
  }
}
