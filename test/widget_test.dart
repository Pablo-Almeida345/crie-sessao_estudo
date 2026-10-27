// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sessao_estudo/main.dart';

void main() {
  testWidgets('SessaoApp smoke test', (WidgetTester tester) async {
    // Constrói o app e dispara o frame (usando SessaoApp em vez de MyApp)
    await tester.pumpWidget(const SessaoApp());

    // Verifica se o título da AppBar está correto
    expect(find.text('Minhas sessões'), findsOneWidget);

    // Verifica se a mensagem de lista vazia aparece inicialmente
    expect(
      find.text('Nenhuma sessão. Toque em Cadastrar para começar.'),
      findsOneWidget,
    );

    // Verifica se o botão de cadastrar está presente
    expect(find.text('Cadastrar'), findsOneWidget);
  });
}