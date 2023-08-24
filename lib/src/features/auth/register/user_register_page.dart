import 'package:dw_barbershop/src/core/ui/helpers/form_helper.dart';
import 'package:dw_barbershop/src/core/ui/helpers/messages.dart';
import 'package:dw_barbershop/src/features/auth/register/user_register_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:validatorless/validatorless.dart';

class UserRegisterPage extends ConsumerStatefulWidget {
  const UserRegisterPage({super.key});

  @override
  ConsumerState<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends ConsumerState<UserRegisterPage> {
  final formKey = GlobalKey<FormState>();
  final namecEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    namecEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userRegisterVm = ref.watch(userRegisterVmProvider.notifier);

    ref.listen(userRegisterVmProvider, (_, state) {
      switch (state) {
        case UserRegisterStateStus.initial:
        case UserRegisterStateStus.success:
        case UserRegisterStateStus.error:
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar conta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: namecEC,
                validator: Validatorless.required('Nome obrigatório'),
                onTapOutside: (_) => context.unfocus(),
                decoration: const InputDecoration(label: Text('Nome')),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: emailEC,
                validator: Validatorless.multiple([
                  Validatorless.required('E-mail obrigatório'),
                  Validatorless.email('E-mail invalido')
                ]),
                onTapOutside: (_) => context.unfocus(),
                decoration: const InputDecoration(label: Text('Email')),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: passwordEC,
                validator: Validatorless.multiple([
                  Validatorless.required('Senha obrigatório'),
                  Validatorless.min(6, 'Senha no minimo 6 caracteres')
                ]),
                obscureText: true,
                onTapOutside: (_) => context.unfocus(),
                decoration: const InputDecoration(label: Text('Senha')),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                validator: Validatorless.multiple([
                  Validatorless.required('Senha obrigatório'),
                  Validatorless.compare(passwordEC, 'Senha diferente')
                ]),
                obscureText: true,
                onTapOutside: (_) => context.unfocus(),
                decoration:
                    const InputDecoration(label: Text('Confirmar a Senha')),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(56)),
                onPressed: () {
                  switch (formKey.currentState?.validate()) {
                    case null || false:
                      Messages.showError('Formulário invalido', context);
                    case true:
                      userRegisterVm.register(
                        name: namecEC.text,
                        email: emailEC.text,
                        password: passwordEC.text,
                      );
                  }
                },
                child: const Text('CRIAR CONTA'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
