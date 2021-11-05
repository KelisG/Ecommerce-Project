import '../cart_page/cart_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MjonknknkjWidget extends StatefulWidget {
  MjonknknkjWidget({Key key}) : super(key: key);

  @override
  _MjonknknkjWidgetState createState() => _MjonknknkjWidgetState();
}

class _MjonknknkjWidgetState extends State<MjonknknkjWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: FaIcon(
                  FontAwesomeIcons.alignJustify,
                  color: Colors.black,
                  size: 20,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              Text(
                'Estasie Clothing',
                style: FlutterFlowTheme.title2.override(
                  fontFamily: 'Ubuntu',
                  fontSize: 25,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPageWidget(),
                    ),
                  );
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
