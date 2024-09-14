import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payung_teduh/common/common.dart';
import 'package:payung_teduh/presentation/themes/src/text_styles.dart';
import 'package:payung_teduh/presentation/themes/src/typography.dart';

class TextInput extends StatefulWidget {
  final String label;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool enabled;
  final Function(String? value)? onChanged;
  final EdgeInsets margin;
  final Widget? suffix;
  final Widget? prefix;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool readOnly;
  final Function()? onTap;
  final String? hintText;
  final Color? fillColor;
  final bool isRequired;
  final bool isOptional;
  final TextInputAction? textInputAction;

  const TextInput({
    super.key,
    Widget? suffixWidget,
    required this.label,
    this.initialValue,
    this.controller,
    this.validator,
    this.autovalidateMode,
    this.enabled = true,
    this.onChanged,
    this.margin = const EdgeInsets.only(top: 2),
    this.obscureText = false,
    this.inputFormatters,
    this.keyboardType,
    this.readOnly = false,
    this.onTap,
    this.hintText,
    this.fillColor,
    this.isRequired = false,
    this.isOptional = false,
    this.textInputAction,
  })  : suffix = suffixWidget,
        prefix = null;

  TextInput.password({
    super.key,
    required this.label,
    Widget? prefix,
    this.initialValue,
    this.controller,
    this.validator,
    this.autovalidateMode,
    this.enabled = true,
    this.onChanged,
    this.margin = const EdgeInsets.only(top: 2),
    this.obscureText = false,
    this.inputFormatters,
    this.keyboardType,
    this.readOnly = false,
    this.onTap,
    this.hintText,
    this.fillColor,
    Function()? onVisibilityTap,
    this.isRequired = false,
    this.isOptional = false,
    this.textInputAction,
  })  : prefix = null,
        suffix = GestureDetector(
          onTap: onVisibilityTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: !obscureText ? Colors.deepPurple[100] : Colors.black45,
            ),
          ),
        );

  TextInput.prefixText({
    super.key,
    required this.label,
    required String text,
    this.initialValue,
    this.controller,
    this.validator,
    this.autovalidateMode,
    this.enabled = true,
    this.onChanged,
    this.margin = const EdgeInsets.only(top: 2),
    this.obscureText = false,
    this.inputFormatters,
    this.keyboardType,
    this.readOnly = false,
    this.onTap,
    this.hintText,
    this.fillColor,
    Function()? onVisibilityTap,
    this.isRequired = false,
    this.isOptional = false,
    this.textInputAction,
  })  : prefix = InterfaceText.normal(
          text,
          color: Colors.black,
        ),
        suffix = null;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _hasError = false;
  bool get _hasFocus => _focusNode.hasFocus;
  String? _text;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(covariant TextInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialValue != widget.initialValue) {
      setState(() {});
    }
  }

  Color _getFocusColor({Color? unfocusColor}) {
    if (_hasError) {
      return Colors.red;
    } else if (_hasFocus && !widget.readOnly && widget.enabled) {
      return Colors.deepPurple;
    }
    return unfocusColor ?? Colors.transparent;
  }

  OutlineInputBorder get _errorBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.red),
      );

  OutlineInputBorder get _defaultBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      );

  TextStyle get _defaultStyle => TextStyles.interfaceNormal.copyWith(
        color: Colors.black87,
      );

  TextStyle get _errorStyle => _defaultStyle.copyWith(
        color: Colors.red,
      );

  Widget get _textField => TextFormField(
        focusNode: _focusNode,
        textInputAction: widget.textInputAction,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        controller: widget.controller,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        autovalidateMode: widget.autovalidateMode,
        obscureText: widget.obscureText,
        initialValue: widget.initialValue,
        enabled: widget.enabled,
        // validator: widget.validator,
        cursorColor: Colors.deepPurple,
        onChanged: (v) {
          widget.onChanged?.call(v);
          String? errorMessage = widget.validator?.call(v);
          setState(() {
            _hasError = !Util.falsyChecker(errorMessage);
            _text = v;
          });
        },
        style: TextStyles.interfaceNormal.copyWith(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          prefixIcon: widget.prefix,
          prefixStyle: _defaultStyle.copyWith(
            color: Colors.black87,
          ),
          // suffixIconConstraints:
          //     const BoxConstraints(minHeight: 2, minWidth: 2),
          prefixIconConstraints:
              const BoxConstraints(minHeight: 2, minWidth: 2),
          contentPadding: EdgeInsets.zero,
          fillColor: widget.enabled
              ? widget.fillColor ?? Colors.deepPurple[50]
              : Colors.transparent,
          hintText: widget.hintText,
          hintStyle: _defaultStyle,
          filled: true,
          isDense: true,
          errorBorder: _errorBorder,
          errorStyle: _errorStyle,
          // floatingLabelStyle: _hasError ? _errorStyle : _defaultStyle,
          labelStyle: _defaultStyle,
          // focusedBorder: _hasError ? _errorBorder : _defaultBorder,
          border: _defaultBorder,
          // enabledBorder: _hasError ? _errorBorder : _defaultBorder,
          // focusedErrorBorder: _errorBorder,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 200),
      alignment: Alignment.topCenter,
      curve: Curves.fastLinearToSlowEaseIn,
      child: GestureDetector(
        onTap: widget.enabled ? widget.onTap : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: widget.margin,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: widget.enabled
                    ? widget.fillColor ?? Colors.deepPurple[50]
                    : Colors.black54,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: _getFocusColor(),
                ),
              ),
              // height: 40,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Caption.strong(
                              widget.label,
                              color: _getFocusColor(
                                unfocusColor: Colors.black,
                              ),
                            ),
                            Visibility(
                              visible: widget.isRequired,
                              child: const Caption.normal(
                                '*',
                                color: Colors.red,
                              ),
                            ),
                            Visibility(
                              visible: widget.isOptional,
                              child: const Caption.normal(
                                '(optional)',
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                          child: _textField,
                        ),
                      ],
                    ),
                  ),
                  if (widget.suffix != null) widget.suffix!,
                ],
              ),
            ),
            Visibility(
              visible: _hasError,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 4),
                child: Caption.normal(
                  widget.validator?.call(_text) ?? '',
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
