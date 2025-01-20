import 'package:flutter/material.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const HoverTextButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //color: Colors.black54,
                color: isHovered ? Color(0xff89b5ca) : Colors.black54,
              ),
            ),
            AnimatedContainer(
              duration:
                  const Duration(milliseconds: 300), // Duración de la animación
              height: 4, // Altura de la línea
              width: isHovered
                  ? 50
                  : 0, // Ancho de la línea cuando el mouse está encima
              color: Color(0xff89b5ca),
              margin: const EdgeInsets.only(
                  top: 3), // Margen entre el texto y la línea
            ),
          ],
        ),
      ),
    );
  }
}
