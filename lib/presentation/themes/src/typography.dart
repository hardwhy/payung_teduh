import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/themes/src/text_styles.dart';

enum VariantStyle { bold, regular }

enum VariantSize { big, small }

enum Variant { strong, normal, large, small }

abstract class Typography extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? align;
  final VariantStyle? variantStyle;

  const Typography({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.maxLines,
    this.align,
    this.variantStyle = VariantStyle.regular,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getTextStyle().copyWith(
        color: color,
      ),
      textAlign: align,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  TextStyle getTextStyle();
}

class Body1 extends Typography {
  const Body1(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.maxLines,
    super.align,
    super.variantStyle,
  }) : super(
          text: text,
        );

  const Body1.bold(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.maxLines,
    super.align,
  }) : super(
          text: text,
          variantStyle: VariantStyle.bold,
        );

  @override
  TextStyle getTextStyle() {
    switch (variantStyle) {
      case VariantStyle.bold:
        return TextStyles.body1Bold;
      default:
        return TextStyles.body1Regular;
    }
  }
}

class Paragraph extends Typography {
  const Paragraph(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.maxLines,
    super.align,
    super.variantStyle,
  }) : super(
          text: text,
        );

  const Paragraph.bold(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.maxLines,
    super.align,
  }) : super(text: text, variantStyle: VariantStyle.bold);

  @override
  TextStyle getTextStyle() {
    switch (variantStyle) {
      case VariantStyle.bold:
        return TextStyles.paragraphBold;
      default:
        return TextStyles.paragraphRegular;
    }
  }
}

class H1 extends Typography {
  const H1(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
    super.variantStyle,
  }) : super(text: text);

  @override
  TextStyle getTextStyle() {
    return TextStyles.h1;
  }
}

class H2 extends Typography {
  const H2(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.variantStyle,
  }) : super(text: text);

  @override
  TextStyle getTextStyle() {
    return TextStyles.h2;
  }
}

class H3 extends Typography {
  const H3(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.variantStyle,
  }) : super(text: text);

  @override
  TextStyle getTextStyle() {
    return TextStyles.h3;
  }
}

class ButtonMontserrat extends Typography {
  final VariantSize size;
  const ButtonMontserrat(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    required this.size,
  }) : super(text: text);

  const ButtonMontserrat.big(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
  })  : size = VariantSize.big,
        super(text: text);

  const ButtonMontserrat.small(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
  })  : size = VariantSize.small,
        super(text: text);

  @override
  TextStyle getTextStyle() {
    switch (size) {
      case VariantSize.big:
        return TextStyles.buttonBig;
      default:
        return TextStyles.buttonSmall;
    }
  }
}

class InterfaceText extends Typography {
  final Variant? variant;
  const InterfaceText(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
    this.variant,
  }) : super(text: text);

  const InterfaceText.strong(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
  })  : variant = Variant.strong,
        super(text: text);

  const InterfaceText.normal(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
  })  : variant = Variant.normal,
        super(text: text);

  @override
  TextStyle getTextStyle() {
    switch (variant) {
      case Variant.strong:
        return TextStyles.interfaceStrong;
      default:
        return TextStyles.interfaceNormal;
    }
  }
}

class Caption extends Typography {
  final Variant? variant;
  const Caption(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    this.variant,
  }): super(text: text);

  const Caption.strong(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
  }) : 
  variant = Variant.strong,
  super(text: text);

  const Caption.normal(
    String text, {
    super.key,
    super.color,
    super.overflow,
    super.align,
    super.maxLines,
  }) : 
  variant = Variant.normal,
  super(text: text);

  @override
  TextStyle getTextStyle() {
    switch (variant) {
      case Variant.strong:
        return TextStyles.captionStrong;
      default:
        return TextStyles.captionNormal;
    }
  }
}
