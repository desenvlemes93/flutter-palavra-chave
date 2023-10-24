import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_palavra_chave/pages/controller/palava_chave.state.dart';
import 'package:project_palavra_chave/pages/controller/palavra_chave_controller.dart';

class PalavaChavePage extends StatefulWidget {
  const PalavaChavePage({super.key});

  @override
  State<PalavaChavePage> createState() => _PalavaChavePageState();
}

class _PalavaChavePageState extends State<PalavaChavePage> {
  final _palavraChaveEC = TextEditingController();
  final _textoEC = TextEditingController();
  final controller = PalavraChaveController();
  var listPalavras = <String>[];
  var listCompletoPalavras = <String>[];
  var ttT = ['JSON', 'Desenvolvedor de Sistemas', 'Git'];
  var rr = [
    '''Meu interesse por tecnologia começou na adolescência. Sou curioso em saber como funcionava a máquina de supermercado, meus olhos brilham quando converso de tecnologia, por isso fiz sistema de informação e áreas afins.

Tenho mais de 8 anos no mercado onde atuei como suporte técnico realizando acesso remoto. Atualmente sou desenvolvedor de sustentação realizando manutenção no sistemas voltado para atacado distribuidor.

Na minha trajetória profissional trabalhei utilizando Linguagem de programação Delphi Xe2, Delphi 10 Seattle, VsCode, PL/SQL entre outros. Para banco de dados já utilizei MySQL, Oracle , FIREBIRD e SQL SERVER entre outros.

Trabalhei utilizando as seguintes ferramentas de versionamento SVN e Git. ReportBuilder e Fortes Report utilizando para criar relatórios personalizado para cliente e para aplicação.

Conheço padrões de projetos como MVP, MVVM, MVC , POO, procedural.

 Desenvolvedor mobile a mais de 2 anos onde acesso a API e manípulo o JSON para mostrar ao
 Front - End utilizando as gerencias de estado mais apropriado para o projeto.

Sempre aberto a novas oportunidades de trabalho.

Se precisar de alguma coisa, me envie uma mensagem inbox, um direct ou me mande um e-mail: lemesricardo93@gmail.com'''
  ];

  // void dispose() {
  //   _palavraChaveEC.dispose();
  //   _textoEC.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Palavra Chave'),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // BlocConsumer<PalavraChaveController, PalavaChaveState>(
                //   bloc: controller,
                //   listener: (context, state) {},
                //   builder: (context, state) {
                //     return switch (state) {
                //       PalavaChaveSuccess(listPalavra: var listPalavra) => Row(
                //           children: listPalavras.map((e) {
                //             print(e);
                //             print(' LIsta palabras ${listPalavras}');
                //             return Text(
                //               e,
                //               style: TextStyle(
                //                 color: _textoEC.text.contains(e) == true
                //                     ? Colors.red
                //                     : Colors.green,
                //               ),
                //             );
                //           }).toList(),
                //         ),
                //       _ => const SizedBox.shrink(),
                //     };
                //   },
                // ),
                Column(
                  children: listPalavras.map((e) {
                    return Text(
                      e,
                      style: TextStyle(
                          color: _textoEC.text.contains(e) == true
                              ? Colors.green
                              : Colors.red),
                    );
                  }).toList(),
                ),

                TextFormField(
                  controller: _palavraChaveEC,
                  decoration: const InputDecoration(
                    label: Text('Palavra Chave'),
                  ),
                ),
                TextFormField(
                  controller: _textoEC,
                  maxLines: null,
                  maxLength: 2000,
                  decoration: const InputDecoration(
                    label: Text('Texto'),
                  ),
                ),

                // Row(
                //   children: listText2.map((e) {
                //     return Text(e,
                //         style: TextStyle(
                //             color: listText.contains(e) == true
                //                 ? Colors.red
                //                 : Colors.amber));
                //   }).toList(),
                // )
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    listPalavras.clear();
                    listCompletoPalavras.clear();
                    listPalavras.add(_palavraChaveEC.text);
                    listCompletoPalavras.add(_textoEC.text);
                    // controller.compararPalavrasChaves(
                    //     listPalavras, _textoEC.text);

                    setState(() {});
                  },
                  child: const Text('Buscar'),
                ),
              ],
            ),
          ],
        ));
  }
}
