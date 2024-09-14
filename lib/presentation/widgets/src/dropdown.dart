import 'package:flutter/material.dart';
import 'package:payung_teduh/common/common.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';

class DropdownField<T> extends StatefulWidget {
  final String label;
  final bool enabled;
  final List<DropdownMenuItem<T>> values;
  final T? value;
  final Function(T? v)? onChanged;
  final Color? fillColor;
  final String? Function(T? value)? validator;
  final String? hintText;
  final bool isRequired;
  const DropdownField({
    super.key,
    required this.label,
    required this.values,
    this.value,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.fillColor,
    this.hintText,
    this.isRequired = false,
  });

  @override
  State<DropdownField<T>> createState() => _DropdownFieldState<T>();
}

class _DropdownFieldState<T> extends State<DropdownField<T>> {
  bool _hasError = false;
  bool get _hasFocus => _focusNode.hasFocus;
  T? _value;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()
      ..addListener(() {
        setState(() {});
      });
    _value = widget.value;
  }

  Color _getFocusColor({Color? unfocusColor}) {
    if (_hasError) {
      return Colors.red;
    } else if (_hasFocus) {
      return Colors.deepPurple;
    }
    return unfocusColor ?? Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // margin: widget.margin,
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
          child: Row(
            children: [
              Expanded(
                child: Column(
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
                      ],
                    ),
                    SizedBox(
                      height: 24,
                      child: DropdownButtonFormField<T>(
                        icon: Container(),
                        elevation: 1,
                        borderRadius: BorderRadius.circular(8),
                        isDense: true,
                        // elevation: 2,
                        // isExpanded: false,
                        validator: widget.validator,
                        style: TextStyles.interfaceNormal.copyWith(),
                        hint: InterfaceText.normal(
                          widget.hintText ?? '',
                          color: Colors.deepPurple[100],
                        ),

                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          // suffixIcon: widget.suffixIcon,
                          contentPadding: EdgeInsets.zero,
                          // labelStyle: _defaultStyle,
                          fillColor: widget.fillColor ?? Colors.deepPurple[50],
                          // label: Text(label),
                          filled: true,
                          // errorBorder: _errorBorder,
                          // errorStyle: _errorStyle,
                          // labelStyle: _defaultStyle,
                          // focusedBorder: _hasError ? _errorBorder : _defaultBorder,
                          // border: _defaultBorder,
                          // enabledBorder: _hasError ? _errorBorder : _defaultBorder,
                          // focusedErrorBorder: _errorBorder,
                        ),
                        value: _value,
                        items: widget.values,
                        // dropdownColor: Colors.white,
                        onChanged: widget.enabled
                            ? (v) {
                                String? errorMessage =
                                    widget.validator?.call(v);
                                widget.onChanged?.call(v);
                                setState(() {
                                  _hasError = !Util.falsyChecker(errorMessage);
                                  _value = v;
                                });
                              }
                            : null,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.black54)
            ],
          ),
        ),
        Visibility(
          visible: _hasError,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 4),
            child: Caption.normal(
              widget.validator?.call(_value) ?? '',
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
