import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
    String? esText = '',
  }) =>
      [ptText, enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // step2
  {
    'l05ykvq0': {
      'pt': 'APAGAR MINHA CONTA',
      'en': 'DELETE ACCOUNT',
      'es': 'ELIMINAR CUENTA',
    },
    '0numsfa2': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '83dex8hf': {
      'pt': 'ETAPA 2 DE 3',
      'en': 'STEP 2 OF 3',
      'es': 'PASO 2 DE 3',
    },
    'py4nkns5': {
      'pt': 'O QUE VOCÊ PRECISA SABER',
      'en': 'WHAT YOU NEED TO KNOW',
      'es': 'LO QUE NECESITAS SABER',
    },
    '25n93u0x': {
      'pt': 'Ao encerrar sua conta você vai perder:',
      'en': 'By closing your account you will lose:',
      'es': 'Al cerrar su cuenta perderá:',
    },
    'vf7rtv6g': {
      'pt': '* ACESSO À CONFIGURAÇÕES DE CONTA E GERENCIAMENTO;',
      'en': '* ACCESS TO ACCOUNT SETTINGS AND MANAGEMENT;',
      'es': '* ACCESO A LA CONFIGURACIÓN Y GESTIÓN DE LA CUENTA;',
    },
    '7jarq87m': {
      'pt': '*SEU CASHBACK DISPONÍVEL',
      'en': '*YOUR CASHBACK AVAILABLE',
      'es': '*TU REEMBOLSO DISPONIBLE',
    },
    '26dsk9go': {
      'pt': '*SEUS FAVORITOS E HISTÓRICO DE SOLICITAÇÕES',
      'en': '*YOUR FAVORITES AND REQUEST HISTORY',
      'es': '*TUS FAVORITOS Y HISTORIAL DE SOLICITUDES',
    },
    'l4k2nm0v': {
      'pt': 'IMPORTANTE!',
      'en': 'IMPORTANT!',
      'es': '¡IMPORTANTE!',
    },
    'dfid3rn8': {
      'pt':
          'SE VOCÊ PEDIU UMA CÓPIA DOS SEUS DADOS PESSOAIS E ESTÁ ESPERANDO O PROCESSAMENTO DELES, NÃO ENCERRE SUA CONTA AGORA. CASO CONTRÁRIO, SUA SOLICITAÇÃO NÃO SERÁ PROCESSADA E SEUS DADOS PESSOAIS SERÃO PERDIDOS PARA SEMPRE. ',
      'en':
          'IF YOU HAVE REQUESTED A COPY OF YOUR PERSONAL DATA AND ARE WAITING FOR IT TO BE PROCESSED, DO NOT CLOSE YOUR ACCOUNT NOW. OTHERWISE, YOUR REQUEST WILL NOT BE PROCESSED AND YOUR PERSONAL DATA WILL BE LOST FOREVER.',
      'es':
          'SI HA SOLICITADO UNA COPIA DE SUS DATOS PERSONALES Y ESTÁ ESPERANDO A QUE SE PROCESEN, NO CIERRE SU CUENTA AHORA. DE LO CONTRARIO, SU SOLICITUD NO SERÁ PROCESADA Y SUS DATOS PERSONALES SE PERDERÁN PARA SIEMPRE.',
    },
    'kxxhn7vt': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'xvdw8fbl': {
      'pt':
          'Entendo que, ao encerrar minha conta, perderei acesso a todo o meu conteúdo e compras, e eles não poderão ser restaurados.',
      'en':
          'I understand that by closing my account, I will lose access to all of my content and purchases, and they cannot be restored.',
      'es':
          'Entiendo que al cerrar mi cuenta, perderé el acceso a todo mi contenido y compras, y no podrán restaurarse.',
    },
    '3mtenzt9': {
      'pt': 'CANCELAR',
      'en': 'CANCEL',
      'es': 'CANCELAR',
    },
    '6a1trzmj': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'q3e6aiqf': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // language
  {
    'wrxc7fws': {
      'pt': 'EDITAR IDIOMA DO APLICATIVO',
      'en': 'EDIT APPLICATION LANGUAGE',
      'es': 'EDITAR IDIOMA DE LA APLICACIÓN',
    },
    'fzyfhyx1': {
      'pt': 'INGLÊS',
      'en': 'ENGLISH',
      'es': 'INGLÉS',
    },
    '7czzxts8': {
      'pt': 'PORTUGUÊS',
      'en': 'PORTUGUESE',
      'es': 'PORTUGUÉS',
    },
    'prkn6tg1': {
      'pt': 'ESPANHOL',
      'en': 'SPANISH',
      'es': 'ESPAÑOL',
    },
    '1091ew85': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // tradeCashProductsPage
  {
    'fguoti99': {
      'pt': 'PRODUTOS',
      'en': 'TRACKING',
      'es': 'SEGUIMIENTO',
    },
    '1r786rlu': {
      'pt': 'Produtos',
      'en': 'Products',
      'es': 'Productos',
    },
    'cma3xhjy': {
      'pt': 'CUPONS',
      'en': 'COUPONS',
      'es': 'CUPONES',
    },
    '6948ik8f': {
      'pt': 'OFERTAS',
      'en': 'OFFERS',
      'es': 'OFERTAS',
    },
    'xh0m1zpw': {
      'pt': 'JOGOS & TECH',
      'en': 'GAMES & TECH',
      'es': 'JUEGOS Y TECNOLOGÍA',
    },
    'gjr98t5u': {
      'pt': 'CUPONS',
      'en': 'COUPONS',
      'es': 'CUPONES',
    },
    'jlnpzw1j': {
      'pt': 'Troque saldo por desconto nas melhores lojas do app!',
      'en': 'Exchange credit for discounts at the best stores on the app!',
      'es': '¡Canjea créditos por descuentos en las mejores tiendas en la app!',
    },
    'zma33szs': {
      'pt': 'OFERTAS DE NOVEMBRO',
      'en': 'NOVEMBER OFFERS',
      'es': 'OFERTAS DE NOVIEMBRE',
    },
    'lm1jld55': {
      'pt': 'Os melhores produtos, com os maiores descontos.',
      'en': 'The best products, with the biggest discounts.',
      'es': 'Los mejores productos, con los mayores descuentos.',
    },
    'wnkg6g0v': {
      'pt': 'CUPONS',
      'en': 'COUPONS',
      'es': 'CUPONES',
    },
    'cwy3tvgv': {
      'pt': 'Troque saldo por desconto nas melhores lojas do app!',
      'en': 'Exchange credit for discounts at the best stores on the app!',
      'es': '¡Canjea créditos por descuentos en las mejores tiendas en la app!',
    },
    'ztdkaxvs': {
      'pt': 'CUPONS',
      'en': 'COUPONS',
      'es': 'CUPONES',
    },
    'bid062os': {
      'pt': 'Troque saldo por desconto nas melhores lojas do app!',
      'en': 'Exchange credit for discounts at the best stores on the app!',
      'es': '¡Canjea créditos por descuentos en las mejores tiendas en la app!',
    },
    'iyc8ta2l': {
      'pt': 'Meus resgates',
      'en': 'My rescues',
      'es': 'Mis rescates',
    },
    'v5ucexmj': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // confirmPhone
  {
    'ilqydroa': {
      'pt': 'EDITAR TELEFONE',
      'en': 'EDIT PHONE',
      'es': 'EDITAR TELÉFONO',
    },
    'kmnlwdbn': {
      'pt': 'ENVIAMOS O CÓDIGO PARA SEU CELULAR',
      'en': 'WE SEND THE CODE TO YOUR CELL PHONE',
      'es': 'TE ENVIAMOS EL CÓDIGO A TU CELULAR',
    },
    'teisojns': {
      'pt': 'E-mail obrigatório.',
      'en': 'Email required.',
      'es': 'Se requiere correo electrónico.',
    },
    '5na8jjr6': {
      'pt': 'O e-mail não é válido.',
      'en': 'The email is not valid.',
      'es': 'El correo electrónico no es válido.',
    },
    '1ss4cxtc': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    '8iz334zp': {
      'pt': 'PARA REENVIAR O CÓDIGO, AGUARDE',
      'en': 'TO RESEND THE CODE, PLEASE WAIT',
      'es': 'PARA REENVIAR EL CÓDIGO, POR FAVOR ESPERE',
    },
    '7004xix9': {
      'pt': 'ENVIAR NOVAMENTE',
      'en': 'SEND AGAIN',
      'es': 'ENVIAR OTRA VEZ',
    },
    '2i3k1m4z': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // notificationManage
  {
    'jzyd5qdw': {
      'pt': 'GERENCIAR NOTIFICAÇÕES',
      'en': 'MANAGE NOTIFICATIONS',
      'es': 'GESTIONAR NOTIFICACIONES',
    },
    'v190ksug': {
      'pt': 'COMUNICAÇÕES DE PROMOÇÕES',
      'en': 'PROMOTION COMMUNICATIONS',
      'es': 'COMUNICACIONES DE PROMOCIÓN',
    },
    'uzpynh8n': {
      'pt':
          'Se manter ativado você vai recber novidades, promoçõesE status de acompanhamento de seus pedidos. Se desativar você vai deixar de recebê-las.',
      'en':
          'If you keep it activated, you will receive news, promotions and tracking status of your orders. If you deactivate it, you will no longer receive them.',
      'es':
          'Si te mantienes activado recibirás novedades, promociones y seguimiento del estado de tus pedidos. Si los desactivas ya no los recibirás.',
    },
    'khczghlm': {
      'pt': 'NOTIFICAÇÕES PUSH',
      'en': 'PUSH NOTIFICATIONS',
      'es': 'NOTIFICACIONES PUSH',
    },
    'afiak3fa': {
      'pt': 'E-MAIL',
      'en': 'E-MAIL',
      'es': 'CORREO ELECTRÓNICO',
    },
    'c7a79w6b': {
      'pt': 'SMS',
      'en': 'SMS',
      'es': 'Mensaje de texto',
    },
    '6ws4oyaw': {
      'pt': 'WHATSAPP',
      'en': 'WHATSAPP',
      'es': 'WhatsApp',
    },
    '7aielt6y': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // login
  {
    'cs41qw1u': {
      'pt': 'FAÇA LOGIN PARA CONTINUAR',
      'en': 'LOG IN TO CONTINUE',
      'es': 'INICIAR SESIÓN PARA CONTINUAR',
    },
    'jtd4o57l': {
      'pt': 'SEU EMAIL',
      'en': 'YOUR EMAIL',
      'es': 'SU CORREO ELECTRÓNICO',
    },
    '2f37o9c9': {
      'pt': 'SENHA',
      'en': 'PASSWORD',
      'es': 'CONTRASEÑA',
    },
    '7w2cc3df': {
      'pt': 'ESQUECI MINHA SENHA',
      'en': 'I FORGOT MY PASSWORD',
      'es': 'Olvidé mi contraseña',
    },
    'x74v7q93': {
      'pt': 'ENTRAR EM MINHA CONTA',
      'en': 'LOG IN TO MY ACCOUNT',
      'es': 'INICIAR SESIÓN EN MI CUENTA',
    },
    'h6jph0mk': {
      'pt': 'ENTRAR COMO CONVIDADO',
      'en': 'LOG IN AS GUEST',
      'es': 'INICIAR SESIÓN COMO INVITADO',
    },
    '047du5bi': {
      'pt': 'OU CONTINUE COM',
      'en': 'OR CONTINUE WITH',
      'es': 'O CONTINUAR CON',
    },
    '4v7i92hl': {
      'pt': 'AINDA NÃO TEM CONTA?',
      'en': 'DON\'T HAVE AN ACCOUNT YET?',
      'es': '¿AÚN NO TIENES UNA CUENTA?',
    },
    'utw36ruu': {
      'pt': ' CRIAR AGORA',
      'en': 'CREATE NOW',
      'es': 'CREAR AHORA',
    },
    'vk7jkdzd': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // membershipCheckoutChangePlan
  {
    'i9uyae6x': {
      'pt': 'CONFIRMAR E PAGAR',
      'en': 'CONFIRM AND PAY',
      'es': 'CONFIRMAR Y PAGAR',
    },
    '9p30bh0z': {
      'pt': 'Plano Atual',
      'en': '',
      'es': '',
    },
    'smum5a31': {
      'pt': 'AQUIPASS',
      'en': 'AQUIPASS',
      'es': 'AQUIPASS',
    },
    'g5xx1r0l': {
      'pt': 'PLANO SELECIONADO',
      'en': 'SELECTED PLAN',
      'es': 'PLAN SELECCIONADO',
    },
    'bpuseerp': {
      'pt': 'COMPRA ÚNICA',
      'en': 'ONE TIME PURCHASE',
      'es': 'COMPRA ÚNICA',
    },
    'mr0yyu5p': {
      'pt': ' por 30 dias',
      'en': 'for 30 days',
      'es': 'por 30 días',
    },
    'j5na964w': {
      'pt': 'MENSAL',
      'en': 'MONTHLY',
      'es': 'MENSUAL',
    },
    'pgnb9qjj': {
      'pt': ' por mês',
      'en': 'per month',
      'es': 'por mes',
    },
    's6h7hihe': {
      'pt': 'Cancele quando quiser',
      'en': 'Cancel anytime',
      'es': 'Cancelar en cualquier momento',
    },
    's9mwgcvd': {
      'pt': ' DE DESCONTO',
      'en': 'DISCOUNT',
      'es': 'DESCUENTO',
    },
    'ilk9c0m3': {
      'pt': '20% DE DESCONTO',
      'en': '20% DISCOUNT',
      'es': '20% DE DESCUENTO',
    },
    'jgrfu4mn': {
      'pt': 'ANUAL',
      'en': 'ANNUAL',
      'es': 'ANUAL',
    },
    'gp41g7sn': {
      'pt': '\$119.90 ',
      'en': '\$119.90',
      'es': '\$119,90',
    },
    'jz5eb1h2': {
      'pt': ' por ano (',
      'en': 'per year (',
      'es': 'por año (',
    },
    'bze9gncz': {
      'pt': ' por mês)',
      'en': 'per month)',
      'es': 'por mes)',
    },
    '17pvibnh': {
      'pt': 'Cancele quando quiser',
      'en': 'Cancel anytime',
      'es': 'Cancelar en cualquier momento',
    },
    'u57a4hau': {
      'pt': 'ALTERAR PLANO',
      'en': 'CHANGE PLAN',
      'es': 'PLAN DE CAMBIO',
    },
    'u9ucow04': {
      'pt': 'RESUMO DO PAGAMENTO',
      'en': 'PAYMENT SUMMARY',
      'es': 'RESUMEN DE PAGO',
    },
    'vz71sdao': {
      'pt': 'SUBTOTAL',
      'en': 'SUBTOTAL',
      'es': 'TOTAL PARCIAL',
    },
    'capd04jz': {
      'pt': 'DESCONTO PLANO ANUAL',
      'en': 'ANNUAL PLAN DISCOUNT',
      'es': 'DESCUENTO EN PLAN ANUAL',
    },
    '7aib5tax': {
      'pt': '\$12.01',
      'en': '',
      'es': '',
    },
    'm6se055o': {
      'pt': 'DESCONTO INFLUENCIADOR',
      'en': 'INFLUENCER DISCOUNT',
      'es': 'DESCUENTO PARA INFLUENCERS',
    },
    'lvh3asl8': {
      'pt': 'TAXA DE SERVIÇO',
      'en': 'SERVICE FEE',
      'es': 'TARIFA DE SERVICIO',
    },
    '61dgoqhb': {
      'pt': 'TOTAL A PAGAR',
      'en': 'TOTAL PAYABLE',
      'es': 'TOTAL A PAGAR',
    },
    '1apq632q': {
      'pt': 'A assinatura do AquiPASS ',
      'en': 'The AquiPASS subscription',
      'es': 'La suscripción AquiPASS',
    },
    'l6mmmba1': {
      'pt': 'não é reembolsável. ',
      'en': 'is non-refundable.',
      'es': 'no es reembolsable.',
    },
    '53fyjghc': {
      'pt':
          'Ela será renovada a cada ano no cartão cadastrado, até que você solicite o cancelamento.',
      'en':
          'It will be renewed every year on the registered card, until you request cancellation.',
      'es':
          'Se renovará cada año en la tarjeta registrada, hasta que solicites la baja.',
    },
    'bppcax4v': {
      'pt':
          'A assinatura do AquiPASS não é reembolsável. Sua assinatura vai ser automaticamente renovada todos os anos no cartão inserido até que você cancele.',
      'en':
          'The AquiPASS subscription is non-refundable. Your subscription will automatically renew every year on the card you entered until you cancel.',
      'es':
          'La suscripción a AquiPASS no es reembolsable. Su suscripción se renovará automáticamente cada año en la tarjeta ingresada hasta que la cancele.',
    },
    'mebb8a0k': {
      'pt': 'A assinatura do AquiPASS ',
      'en': 'The AquiPASS subscription',
      'es': 'La suscripción a AquiPASS',
    },
    'ze7j79n1': {
      'pt': 'não é reembolsável. ',
      'en': 'is non-refundable.',
      'es': 'no es reembolsable.',
    },
    '7bbpde93': {
      'pt':
          ' Ela será renovada a cada mês no cartão cadastrado, até que você solicite o cancelamento.',
      'en':
          'It will be renewed every month on the registered card, until you request cancellation.',
      'es':
          'Se renovará cada mes en la tarjeta registrada, hasta que solicites la baja.',
    },
    'tyeh1z4t': {
      'pt':
          'A assinatura do AquiPASS não é reembolsável. Sua assinatura vai ser automaticamente renovada todos os anos no cartão inserido até que você cancele.',
      'en':
          'The AquiPASS subscription is non-refundable. Your subscription will automatically renew every year on the card you entered until you cancel.',
      'es':
          'La suscripción a AquiPASS no es reembolsable. Su suscripción se renovará automáticamente cada año en la tarjeta ingresada hasta que la cancele.',
    },
    'sayk1cwa': {
      'pt':
          'Este plano possui pagamento único, ou seja, você será cobrado apenas uma vez no momento da contratação, sem cobranças recorrentes.',
      'en': 'The AquiPASS subscription',
      'es': 'La suscripción AquiPASS',
    },
    'k97n2pcf': {
      'pt':
          'A assinatura do AquiPASS não é reembolsável. Sua assinatura vai ser automaticamente renovada todos os anos no cartão inserido até que você cancele.',
      'en':
          'The AquiPASS subscription is non-refundable. Your subscription will automatically renew every year on the card you entered until you cancel.',
      'es':
          'La suscripción a AquiPASS no es reembolsable. Su suscripción se renovará automáticamente cada año en la tarjeta ingresada hasta que la cancele.',
    },
    'f2302o9i': {
      'pt': 'Para saber mais, confira os ',
      'en': 'To learn more, check out the',
      'es': 'Para obtener más información, consulte la',
    },
    'w5ppmdtz': {
      'pt': 'Termos de Serviço.',
      'en': 'Terms of Service.',
      'es': 'Condiciones de servicio.',
    },
    'ryume6bw': {
      'pt': 'ATUALIZAR O AQUIPASS',
      'en': 'SIGN UP FOR AQUIPASS',
      'es': 'REGÍSTRATE EN AQUIPASS',
    },
    'j40yu49y': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // resetPassword-step1
  {
    'glgswwht': {
      'pt': 'RESETAR SENHA',
      'en': 'RESET PASSWORD',
      'es': 'RESTABLECER CONTRASEÑA',
    },
    'cpa97rni': {
      'pt':
          'INSIRA SEU E-MAIL E TE ENVIAREMOS UM LINK POR E-MAIL PARA SEGUIR COM A ALTERAÇÃO',
      'en':
          'ENTER YOUR EMAIL AND WE WILL SEND YOU A LINK BY EMAIL TO CONTINUE WITH THE CHANGE',
      'es':
          'INGRESA TU CORREO ELECTRÓNICO Y TE ENVIAREMOS UN ENLACE POR EMAIL PARA CONTINUAR CON EL CAMBIO',
    },
    'r1melpbo': {
      'pt': 'E-MAIL',
      'en': 'E-MAIL',
      'es': 'CORREO ELECTRÓNICO',
    },
    'ng6zpl8c': {
      'pt': 'E-mail obrigatório.',
      'en': 'Email required.',
      'es': 'Se requiere correo electrónico.',
    },
    'h355wsu8': {
      'pt': 'O e-mail não é válido.',
      'en': 'The email is not valid.',
      'es': 'El correo electrónico no es válido.',
    },
    '4xxg79up': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'd2mqncx9': {
      'pt': 'SOLICITAR ALTERAÇÃO DE SENHA',
      'en': 'REQUEST PASSWORD CHANGE',
      'es': 'SOLICITAR CAMBIO DE CONTRASEÑA',
    },
    'fc08dr0a': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // MensagemHomeNoMensage
  {
    'js1ltmer': {
      'pt': 'MENSAGENS',
      'en': 'MESSAGES',
      'es': 'MENSAJES',
    },
    '7chzh3an': {
      'pt': 'BUSCAR CONVERSA...',
      'en': 'SEARCH CONVERSATION...',
      'es': 'BUSCAR CONVERSACIÓN...',
    },
    'ev4qxfcx': {
      'pt': 'SUPORTE',
      'en': 'SUPPORT',
      'es': 'APOYO',
    },
    'uzwr1zuz': {
      'pt': 'DELIVERY',
      'en': 'DELIVERY',
      'es': 'ENTREGA',
    },
    'gxjity6k': {
      'pt': 'AGENDAMENTOS',
      'en': 'APPOINTMENTS',
      'es': 'EQUIPO',
    },
    'cwur0r8g': {
      'pt': 'LOCAÇÃO',
      'en': 'RENTAL',
      'es': 'ALQUILER',
    },
    'fnm5ak9q': {
      'pt': 'NÃO ENCONTRAMOS NADA AQUI.',
      'en': 'WE DIDN\'T FIND ANYTHING HERE.',
      'es': 'NO ENCONTRAMOS NADA AQUÍ.',
    },
    'vy8q2w7o': {
      'pt':
          'Você ainda não tem nenhuma conversa por aqui. Quando começar a conversar, elas aparecerão neste espaço. Que tal iniciar a primeira?',
      'en':
          'You don\'t have any conversations here yet. When you start chatting, they\'ll appear in this space. Why not start your first one?',
      'es':
          'Aún no tienes ninguna conversación aquí. Cuando comiences a chatear, aparecerán en este espacio. ¿Qué tal empezar el primero?',
    },
    '8t91gd7z': {
      'pt': 'AQUIBRAZIL',
      'en': 'AQUIBRAZIL',
      'es': 'AQUIBRASIL',
    },
    'cbwdivb1': {
      'pt': '(#1234)',
      'en': '(#1234)',
      'es': '(#1234)',
    },
    'h1c7xbsp': {
      'pt': ' - ',
      'en': '-',
      'es': '-',
    },
    '2fno4mqi': {
      'pt': '29/10/2024',
      'en': '10/29/2024',
      'es': '29/10/2024',
    },
    '4ozkhjlc': {
      'pt':
          'Nós já processamos sua solicitação e dentro de no máximo 24h lhe retornaremos com o resultado. A AquiBrazil agradece seu contato',
      'en':
          'We have already processed your request and will get back to you with the result within 24 hours. AquiBrazil thanks you for contacting us.',
      'es':
          'Ya hemos procesado su solicitud y nos pondremos en contacto con usted con el resultado en un máximo de 24 horas. AquiBrazil le agradece por contactarnos',
    },
    'c47t3xj8': {
      'pt': '10',
      'en': '10',
      'es': '10',
    },
    'ad4h8s4n': {
      'pt': 'AQUIBRAZIL',
      'en': 'AQUIBRAZIL',
      'es': 'AQUIBRASIL',
    },
    '1wsb511e': {
      'pt': '(#1234)',
      'en': '(#1234)',
      'es': '(#1234)',
    },
    'f25b9a8i': {
      'pt': ' - ',
      'en': '-',
      'es': '-',
    },
    'bx2k0nk8': {
      'pt': '29/10/2024',
      'en': '10/29/2024',
      'es': '29/10/2024',
    },
    '27knyppg': {
      'pt':
          'Nós já processamos sua solicitação e dentro de no máximo 24h lhe retornaremos com o resultado. A AquiBrazil agradece seu contato',
      'en':
          'We have already processed your request and will get back to you with the result within 24 hours. AquiBrazil thanks you for contacting us.',
      'es':
          'Ya hemos procesado su solicitud y nos pondremos en contacto con usted con el resultado en un máximo de 24 horas. AquiBrazil le agradece por contactarnos',
    },
    'd06vu0l3': {
      'pt': '10',
      'en': '10',
      'es': '10',
    },
    '0sk47b2r': {
      'pt': 'AQUIBRAZIL',
      'en': 'AQUIBRAZIL',
      'es': 'AQUIBRASIL',
    },
    'r8z1i81j': {
      'pt': '(#1234)',
      'en': '(#1234)',
      'es': '(#1234)',
    },
    'm9t48trw': {
      'pt': ' - ',
      'en': '-',
      'es': '-',
    },
    'knndhn1z': {
      'pt': '29/10/2024',
      'en': '10/29/2024',
      'es': '29/10/2024',
    },
    'ye50jrp4': {
      'pt':
          'Nós já processamos sua solicitação e dentro de no máximo 24h lhe retornaremos com o resultado. A AquiBrazil agradece seu contato',
      'en':
          'We have already processed your request and will get back to you with the result within 24 hours. AquiBrazil thanks you for contacting us.',
      'es':
          'Ya hemos procesado su solicitud y nos pondremos en contacto con usted con el resultado en un máximo de 24 horas. AquiBrazil le agradece por contactarnos',
    },
    'u0uidksv': {
      'pt': '10',
      'en': '10',
      'es': '10',
    },
    'wismj5i5': {
      'pt': 'FALAR COM A AQUIBRAZIL',
      'en': 'TALK TO AQUIBRAZIL',
      'es': 'HABLA CON AQUIBRAZIL',
    },
    'uyzsevpg': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // addressDelivery
  {
    '2xsgp90u': {
      'pt': 'MEUS ENDEREÇOS',
      'en': 'MY ADDRESSES',
      'es': 'MIS DIRECCIONES',
    },
    'w7ef0x28': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // chat
  {
    'sly0cl9y': {
      'pt': 'ESCREVA ALGO AQUI...',
      'en': 'WRITE SOMETHING HERE...',
      'es': 'ESCRIBE ALGO AQUÍ...',
    },
    'gf11eg1w': {
      'pt': 'AQUIBRAZIL',
      'en': 'AQUIBRAZIL',
      'es': 'AQUIBRASIL',
    },
    'yr0y5mrx': {
      'pt': 'Suporte ao cliente',
      'en': 'Customer Support',
      'es': 'Atención al cliente',
    },
    'qnl0c4wg': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // faqAnswerView
  {
    'emz1z5e0': {
      'pt': 'FAQ',
      'en': 'FAQ',
      'es': 'Preguntas frecuentes',
    },
    'ui0a6vs6': {
      'pt': 'ESTA INFORMAÇÃO FOI ÚTIL?',
      'en': 'WAS THIS INFORMATION HELPFUL?',
      'es': '¿FUE ÚTIL ESTA INFORMACIÓN?',
    },
    '14kmp2mv': {
      'pt': 'FALAR COM A AQUIBRAZIL',
      'en': 'TALK TO AQUIBRAZIL',
      'es': 'HABLA CON AQUIBRAZIL',
    },
    'sagyfsk4': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // help
  {
    'mxa0y0fz': {
      'pt': 'AJUDA',
      'en': 'HELP',
      'es': 'AYUDA',
    },
    'rjpqphlx': {
      'pt': 'AJUDA',
      'en': 'HELP',
      'es': 'AYUDA',
    },
    'y37h1gfn': {
      'pt':
          'ENCONTRE INFORMAÇÕES SOBRE AS PERGUNTAS MAIS FREQUENTES OU NOS CONTACTE DIRETAMENTE.',
      'en':
          'FIND INFORMATION ABOUT THE MOST FREQUENTLY ASKED QUESTIONS OR CONTACT US DIRECTLY.',
      'es':
          'ENCUENTRE INFORMACIÓN SOBRE LAS PREGUNTAS MÁS FRECUENTES O CONTÁCTENOS DIRECTAMENTE.',
    },
    '0i74wyi1': {
      'pt': 'FAQ',
      'en': 'FAQ',
      'es': 'Preguntas frecuentes',
    },
    'db6n2w9i': {
      'pt': 'NÓS JÁ RESPONDEMOS A MAIORIA DAS SUAS PERGUNTAS. CONFIRA!',
      'en': 'WE HAVE ALREADY ANSWERED MOST OF YOUR QUESTIONS. CHECK IT OUT!',
      'es':
          'YA HEMOS RESPONDIDO LA MAYORÍA DE SUS PREGUNTAS. ¡ÉCHALE UN VISTAZO!',
    },
    'isvv1x1b': {
      'pt': 'CHAT',
      'en': 'CHAT',
      'es': 'CHARLAR',
    },
    'ab8iue2s': {
      'pt': 'ALGUMA DIFICULDADE? NÓS ESTAMOS AQUI PARA O QUE VOCÊ PRECISAR!',
      'en': 'ANY DIFFICULTY? WE ARE HERE FOR WHATEVER YOU NEED!',
      'es': '¿ALGUNA DIFICULTAD? ¡ESTAMOS AQUÍ PARA LO QUE NECESITES!',
    },
    'nxxg9mpj': {
      'pt': 'CONTACTE-NOS',
      'en': 'CONTACT US',
      'es': 'CONTÁCTENOS',
    },
    '5ij1bspx': {
      'pt':
          'NÃO ENCONTROU O QUE PROCURAVA? NOS ENVIE UM E-MAIL COM SUA DÚVIDA!',
      'en':
          'DIDN\'T FIND WHAT YOU WERE LOOKING FOR? SEND US AN EMAIL WITH YOUR QUESTION!',
      'es':
          '¿NO ENCONTRASTE LO QUE BUSCABAS? ¡ENVÍANOS UN CORREO ELECTRÓNICO CON TU PREGUNTA!',
    },
    'vzqfjj3w': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // membershipCheckout
  {
    'augbingd': {
      'pt': 'CONFIRMAR E PAGAR',
      'en': 'CONFIRM AND PAY',
      'es': 'CONFIRMAR Y PAGAR',
    },
    '4ha81ykg': {
      'pt': 'PLANO SELECIONADO',
      'en': 'SELECTED PLAN',
      'es': 'PLAN SELECCIONADO',
    },
    '7n2rtq0a': {
      'pt': 'COMPRA ÚNICA',
      'en': 'ONE TIME PURCHASE',
      'es': 'COMPRA ÚNICA',
    },
    'h0498bd0': {
      'pt': ' por 30 dias',
      'en': 'for 30 days',
      'es': 'por 30 días',
    },
    '9zdruxbb': {
      'pt': 'MENSAL',
      'en': 'MONTHLY',
      'es': 'MENSUAL',
    },
    '7suw24ed': {
      'pt': ' por mês',
      'en': 'per month',
      'es': 'por mes',
    },
    '2dexrodc': {
      'pt': 'Cancele quando quiser',
      'en': 'Cancel anytime',
      'es': 'Cancelar en cualquier momento',
    },
    'ffie2f6y': {
      'pt': ' DE DESCONTO',
      'en': 'DISCOUNT',
      'es': 'DESCUENTO',
    },
    'sq64hnuf': {
      'pt': '20% DE DESCONTO',
      'en': '20% DISCOUNT',
      'es': '20% DE DESCUENTO',
    },
    'x09i9ph8': {
      'pt': 'ANUAL',
      'en': 'ANNUAL',
      'es': 'ANUAL',
    },
    'phsz5ky8': {
      'pt': '\$119.90 ',
      'en': '\$119.90',
      'es': '\$119,90',
    },
    'i0jqfr8m': {
      'pt': ' por ano (',
      'en': 'per year (',
      'es': 'por año (',
    },
    '2bne2r89': {
      'pt': ' por mês)',
      'en': 'per month)',
      'es': 'por mes)',
    },
    '8gv1ophf': {
      'pt': 'Cancele quando quiser',
      'en': 'Cancel anytime',
      'es': 'Cancelar en cualquier momento',
    },
    'a5iqhcjg': {
      'pt': 'ALTERAR PLANO',
      'en': 'CHANGE PLAN',
      'es': 'PLAN DE CAMBIO',
    },
    'b71a25oj': {
      'pt': 'RESUMO DO PAGAMENTO',
      'en': 'PAYMENT SUMMARY',
      'es': 'RESUMEN DE PAGO',
    },
    '9ov76fde': {
      'pt': 'SUBTOTAL',
      'en': 'SUBTOTAL',
      'es': 'TOTAL PARCIAL',
    },
    '0gjcl8pg': {
      'pt': 'DESCONTO PLANO ANUAL',
      'en': 'ANNUAL PLAN DISCOUNT',
      'es': 'DESCUENTO EN PLAN ANUAL',
    },
    '07egpyd3': {
      'pt': '\$12.01',
      'en': '',
      'es': '',
    },
    'o0ocrjx9': {
      'pt': 'DESCONTO INFLUENCIADOR',
      'en': 'INFLUENCER DISCOUNT',
      'es': 'DESCUENTO PARA INFLUENCERS',
    },
    'z7oc8fhv': {
      'pt': 'TAXA DE SERVIÇO',
      'en': 'SERVICE FEE',
      'es': 'TARIFA DE SERVICIO',
    },
    'govqlxt8': {
      'pt': 'TOTAL A PAGAR',
      'en': 'TOTAL PAYABLE',
      'es': 'TOTAL A PAGAR',
    },
    'hiuixk8y': {
      'pt': 'A assinatura do AquiPASS ',
      'en': 'The AquiPASS subscription',
      'es': 'La suscripción AquiPASS',
    },
    'vfbl5zzr': {
      'pt': 'não é reembolsável. ',
      'en': 'is non-refundable.',
      'es': 'no es reembolsable.',
    },
    'rb4i0y5e': {
      'pt':
          'Ela será renovada a cada ano no cartão cadastrado, até que você solicite o cancelamento.',
      'en':
          'It will be renewed every year on the registered card, until you request cancellation.',
      'es':
          'Se renovará cada año en la tarjeta registrada, hasta que solicites la baja.',
    },
    'n6gkll4y': {
      'pt':
          'A assinatura do AquiPASS não é reembolsável. Sua assinatura vai ser automaticamente renovada todos os anos no cartão inserido até que você cancele.',
      'en':
          'The AquiPASS subscription is non-refundable. Your subscription will automatically renew every year on the card you entered until you cancel.',
      'es':
          'La suscripción a AquiPASS no es reembolsable. Su suscripción se renovará automáticamente cada año en la tarjeta ingresada hasta que la cancele.',
    },
    '2klnkcuc': {
      'pt': 'A assinatura do AquiPASS ',
      'en': 'The AquiPASS subscription',
      'es': 'La suscripción a AquiPASS',
    },
    'x5tjgt6c': {
      'pt': 'não é reembolsável. ',
      'en': 'is non-refundable.',
      'es': 'no es reembolsable.',
    },
    'nsdo98h8': {
      'pt':
          ' Ela será renovada a cada mês no cartão cadastrado, até que você solicite o cancelamento.',
      'en':
          'It will be renewed every month on the registered card, until you request cancellation.',
      'es':
          'Se renovará cada mes en la tarjeta registrada, hasta que solicites la baja.',
    },
    'v0501ov5': {
      'pt':
          'A assinatura do AquiPASS não é reembolsável. Sua assinatura vai ser automaticamente renovada todos os anos no cartão inserido até que você cancele.',
      'en':
          'The AquiPASS subscription is non-refundable. Your subscription will automatically renew every year on the card you entered until you cancel.',
      'es':
          'La suscripción a AquiPASS no es reembolsable. Su suscripción se renovará automáticamente cada año en la tarjeta ingresada hasta que la cancele.',
    },
    'ezcpifb9': {
      'pt':
          'Este plano possui pagamento único, ou seja, você será cobrado apenas uma vez no momento da contratação, sem cobranças recorrentes.',
      'en': 'The AquiPASS subscription',
      'es': 'La suscripción AquiPASS',
    },
    'jolmx57o': {
      'pt':
          'A assinatura do AquiPASS não é reembolsável. Sua assinatura vai ser automaticamente renovada todos os anos no cartão inserido até que você cancele.',
      'en':
          'The AquiPASS subscription is non-refundable. Your subscription will automatically renew every year on the card you entered until you cancel.',
      'es':
          'La suscripción a AquiPASS no es reembolsable. Su suscripción se renovará automáticamente cada año en la tarjeta ingresada hasta que la cancele.',
    },
    'duoyblun': {
      'pt': 'Para saber mais, confira os ',
      'en': 'To learn more, check out the',
      'es': 'Para obtener más información, consulte la',
    },
    'p87tfg9t': {
      'pt': 'Termos de Serviço.',
      'en': 'Terms of Service.',
      'es': 'Condiciones de servicio.',
    },
    'rncgr4bb': {
      'pt': 'ASSINAR O AQUIPASS',
      'en': 'SIGN UP FOR AQUIPASS',
      'es': 'REGÍSTRATE EN AQUIPASS',
    },
    'btamck6d': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // step1
  {
    'gyjlv5iy': {
      'pt': 'APAGAR CONTA',
      'en': 'DELETE ACCOUNT',
      'es': 'ELIMINAR CUENTA',
    },
    'q3gtus3p': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'sfua5lhk': {
      'pt': 'ETAPA 1 DE 3',
      'en': 'STEP 1 OF 3',
      'es': 'PASO 1 DE 3',
    },
    'e1l7nfkg': {
      'pt': 'CONFIRA OS DADOS DA SUA CONTA',
      'en': 'CHECK YOUR ACCOUNT DATA',
      'es': 'VERIFICAR LOS DATOS DE SU CUENTA',
    },
    'l0jovwxu': {
      'pt': 'Verifique os dados da sua conta antes de encerrá-la.',
      'en': 'Please check your account details before closing your account.',
      'es': 'Verifique los detalles de su cuenta antes de cerrarla.',
    },
    '3jnx9eqf': {
      'pt': 'Nome de usuário',
      'en': 'Username',
      'es': 'Nombre de usuario',
    },
    '0zrkvuiz': {
      'pt': 'E-mail',
      'en': 'E-mail',
      'es': 'Correo electrónico',
    },
    'th0ja78p': {
      'pt': 'PRECISA DE AJUDA?',
      'en': 'NEED HELP?',
      'es': '¿NECESITAR AYUDA?',
    },
    '20itc1bo': {
      'pt': 'Fale com nosso time se tiver algum problema.',
      'en': 'Talk to our team if you have any problems.',
      'es': 'Habla con nuestro equipo si tienes algún problema.',
    },
    'awy95s0w': {
      'pt': 'FALAR COM A AQUIBRAZIL',
      'en': 'TALK TO AQUIBRAZIL',
      'es': 'HABLA CON AQUIBRAZIL',
    },
    'dv1z98vy': {
      'pt': 'CANCELAR',
      'en': 'CANCEL',
      'es': 'CANCELAR',
    },
    '1upriaa6': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    '18ffchba': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // signup-step3
  {
    'yk5dmjir': {
      'pt': 'QUAL O SEU NÚMERO DE CELULAR?',
      'en': 'WHAT IS YOUR CELL PHONE NUMBER?',
      'es': '¿CUAL ES TU NUMERO DE TELEFONO CELULAR?',
    },
    '00ib38rk': {
      'pt': 'CELULAR',
      'en': 'CELL PHONE',
      'es': 'TELÉFONO MÓVIL',
    },
    'wo4ggy2t': {
      'pt': 'NÓS ENVIAREMOS UM CÓDIGO PARA VALIDARMOS SEU TELEFONE.',
      'en': 'WE WILL SEND YOU A CODE TO VALIDATE YOUR PHONE.',
      'es': 'TE ENVIAREMOS UN CÓDIGO PARA VALIDAR TU TELÉFONO.',
    },
    'jkgh7ta1': {
      'pt': 'POR ONDE DESEJA RECEBER?',
      'en': 'WHERE DO YOU WANT TO RECEIVE IT?',
      'es': '¿DONDE QUIERES RECIBIRLO?',
    },
    'xio28yce': {
      'pt': 'SMS',
      'en': 'SMS',
      'es': 'SMS',
    },
    'xpdgj0yy': {
      'pt': 'WHATSAPP',
      'en': 'WHATSAPP',
      'es': 'WHATSAPP',
    },
    'mvw8xuba': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // aboutVersion
  {
    'a34adsb1': {
      'pt': 'SOBRE A VERSÃO',
      'en': 'ABOUT THE VERSION',
      'es': 'ACERCA DE LA VERSIÓN',
    },
    'w99dyput': {
      'pt': 'TERMOS DE USO',
      'en': 'TERMS OF USE',
      'es': 'CONDICIONES DE USO',
    },
    'p9icc87k': {
      'pt': 'POLÍTICA DE PRIVACIDADE',
      'en': 'PRIVACY POLICY',
      'es': 'POLÍTICA DE PRIVACIDAD',
    },
    'o4ha0cxp': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // terms
  {
    'se7y3j9o': {
      'pt': 'TERMOS DE USO',
      'en': 'TERMS OF USE',
      'es': 'CONDICIONES DE USO',
    },
    'vmmq5yfh': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Pagamentos
  {
    'f97is7d6': {
      'pt': 'PAGAMENTOS',
      'en': 'PAYMENTS',
      'es': 'PAGOS',
    },
    'wnumoigt': {
      'pt': 'FORMA DE PAGAMENTO',
      'en': 'PAYMENT METHOD',
      'es': 'FORMA DE PAGO',
    },
    '88ybbtav': {
      'pt': 'VER TODOS',
      'en': 'SEE ALL',
      'es': 'VER TODO',
    },
    'l8arg3s9': {
      'pt': 'Cadastrar',
      'en': 'Register',
      'es': 'Registro',
    },
    'z4xasjxf': {
      'pt': 'Novo método',
      'en': 'New method',
      'es': 'Nuevo método',
    },
    'auxg62gc': {
      'pt': 'DÉBITO',
      'en': 'DEBIT',
      'es': 'DÉBITO',
    },
    '1phb1v8r': {
      'pt': 'Mastercard',
      'en': 'MasterCard',
      'es': 'tarjeta MasterCard',
    },
    'uf908j27': {
      'pt': '•••• 8465',
      'en': '•••• 8465',
      'es': '•••• 8465',
    },
    'itt2kj7k': {
      'pt': 'CRÉDITO',
      'en': 'CREDIT',
      'es': 'CRÉDITO',
    },
    'g0hzp28k': {
      'pt': 'Mastercard',
      'en': 'MasterCard',
      'es': 'tarjeta MasterCard',
    },
    'xbdvlmhp': {
      'pt': '•••• 1548',
      'en': '•••• 1548',
      'es': '•••• 1548',
    },
    'gcsw6it0': {
      'pt': 'HISTÓRICO DE PAGAMENTOS',
      'en': 'PAYMENT HISTORY',
      'es': 'HISTORIAL DE PAGOS',
    },
    '954xfoa5': {
      'pt': 'VER TODOS',
      'en': 'SEE ALL',
      'es': 'VER TODO',
    },
    's3mwahi6': {
      'pt': 'BUSCAR POR DATA, LOJA OU VALOR...',
      'en': 'SEARCH BY DATE, STORE OR VALUE...',
      'es': 'BUSCAR POR FECHA, TIENDA O VALOR...',
    },
    'chisr2bw': {
      'pt': 'DELIVERY',
      'en': 'DELIVERY',
      'es': 'ENTREGA',
    },
    'qrecy74k': {
      'pt': 'AGENDAMENTOS',
      'en': 'APPOINTMENTS',
      'es': 'EQUIPO',
    },
    'bysdziyo': {
      'pt': 'LOCAÇÃO',
      'en': 'RENTAL',
      'es': 'ALQUILER',
    },
    'jax1cbfj': {
      'pt': 'SUPORTE',
      'en': 'SUPPORT',
      'es': 'APOYO',
    },
    'a22cl4y1': {
      'pt': 'Burger King - Iguatemi',
      'en': 'Burger King - Iguatemi',
      'es': 'Burger King - Iguatemi',
    },
    'zl1rj7if': {
      'pt': 'Agendamento n° 0926 - 04/11/2024',
      'en': 'Appointment No. 0926 - 11/04/2024',
      'es': 'Cita No. 0926 - 04/11/2024',
    },
    'b0wmqqxf': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    'sv9827nr': {
      'pt': '119.90',
      'en': '119.90',
      'es': '119,90',
    },
    'iuvyp9p5': {
      'pt': 'Master débito',
      'en': 'Master debit',
      'es': 'Débito maestro',
    },
    '6ggavrre': {
      'pt': 'Burger King - Iguatemi',
      'en': 'Burger King - Iguatemi',
      'es': 'Burger King - Iguatemi',
    },
    '57j5jlgt': {
      'pt': 'Agendamento n° 0926 - 04/11/2024',
      'en': 'Appointment No. 0926 - 11/04/2024',
      'es': 'Cita No. 0926 - 04/11/2024',
    },
    'y9m1nltf': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    'a3u2jjda': {
      'pt': '119.90',
      'en': '119.90',
      'es': '119,90',
    },
    'cjouuot5': {
      'pt': 'Master débito',
      'en': 'Master debit',
      'es': 'Débito maestro',
    },
    'txiw70ki': {
      'pt': 'Burger King - Iguatemi',
      'en': 'Burger King - Iguatemi',
      'es': 'Burger King - Iguatemi',
    },
    'do8qgqra': {
      'pt': 'Agendamento n° 0926 - 04/11/2024',
      'en': 'Appointment No. 0926 - 11/04/2024',
      'es': 'Cita No. 0926 - 04/11/2024',
    },
    'l6zb7u5h': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    'bcpfum4g': {
      'pt': '119.90',
      'en': '119.90',
      'es': '119,90',
    },
    'o30cdie9': {
      'pt': 'Master débito',
      'en': 'Master debit',
      'es': 'Débito maestro',
    },
    '3l72jmkj': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // accountData
  {
    'jq21fgfj': {
      'pt': 'DADOS DA CONTA',
      'en': 'ACCOUNT DATA',
      'es': 'DATOS DE LA CUENTA',
    },
    'q1t00e0j': {
      'pt': 'INFORMAÇÕES PESSOAIS',
      'en': 'PERSONAL INFORMATION',
      'es': 'INFORMACIÓN PERSONAL',
    },
    'l3dhwoll': {
      'pt': 'NOME COMPLETO',
      'en': 'FULL NAME',
      'es': 'NOMBRE COMPLETO',
    },
    '492xnxe8': {
      'pt': 'INFORMAÇÕES DE ACESSO',
      'en': 'ACCESS INFORMATION',
      'es': 'INFORMACIÓN DE ACCESO',
    },
    'uug6nkze': {
      'pt': 'DADOS DE CONTATO E ACESSO A SUA CONTA',
      'en': 'CONTACT DATA AND ACCESS TO YOUR ACCOUNT',
      'es': 'DATOS DE CONTACTO Y ACCESO A SU CUENTA',
    },
    'bjvwn4lv': {
      'pt': 'PUBLICIDADE',
      'en': 'ADVERTISING',
      'es': 'PUBLICIDAD',
    },
    'z8y5mie5': {
      'pt': 'GERENCIAR PERMISSÃO',
      'en': 'MANAGE PERMISSION',
      'es': 'ADMINISTRAR PERMISOS',
    },
    '0uy8c7ih': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // membershipChangePlan
  {
    '5y13f796': {
      'pt': 'AQUIPASS',
      'en': 'AQUIPASS',
      'es': 'AQUIPASS',
    },
    'gkmx6nsp': {
      'pt': 'ATÉ ',
      'en': 'UNTIL',
      'es': 'HASTA',
    },
    'iihj8b56': {
      'pt': '4X MAIS BENEFÍCIOS ',
      'en': '4X MORE BENEFITS',
      'es': '4 VECES MÁS BENEFICIOS',
    },
    'hjhd898d': {
      'pt': 'COM O AQUIPASS',
      'en': 'WITH AQUIPASS',
      'es': 'CON AQUIPASS',
    },
    's3qpqaty': {
      'pt': 'PLANO ATUAL',
      'en': 'CURRENT PLAN',
      'es': 'PLAN ACTUAL',
    },
    'md27seg7': {
      'pt': 'AQUIPASS',
      'en': 'AQUIPASS',
      'es': 'AQUIPASS',
    },
    '02paan57': {
      'pt': 'POSSUI ALGUM CUPOM DE DESCONTO?',
      'en': 'DO YOU HAVE A DISCOUNT COUPON?',
      'es': '¿TIENES UN CUPÓN DE DESCUENTO?',
    },
    '6mk9zapq': {
      'pt': 'Digite aqui seu cupom de desconto',
      'en': 'Enter your discount coupon here',
      'es': 'Introduce aquí tu cupón de descuento',
    },
    'xf680i3k': {
      'pt': 'CONVIDADO(A) POR ',
      'en': 'INVITED BY',
      'es': 'INVITADO POR',
    },
    'obix7cgr': {
      'pt': 'Convidado(a) por ',
      'en': 'Invited by',
      'es': 'Invitado por',
    },
    '3ichy6sk': {
      'pt': 'CUPOM DE DESCONTO APLICADO',
      'en': 'DISCOUNT COUPON APPLIED',
      'es': 'CUPÓN DE DESCUENTO APLICADO',
    },
    '898oon4u': {
      'pt': 'Convidado(a) por ',
      'en': 'Invited by',
      'es': 'Invitado por',
    },
    'dckhvpv3': {
      'pt': 'CUPOM NÃO ENCONTRADO',
      'en': 'COUPON NOT FOUND',
      'es': 'CUPÓN NO ENCONTRADO',
    },
    '93rk9pym': {
      'pt': 'ESCOLHA SEU PLANO:',
      'en': 'CHOOSE YOUR PLAN:',
      'es': 'ELIGE TU PLAN:',
    },
    'y7ruus82': {
      'pt': ' DE DESCONTO',
      'en': 'DISCOUNT',
      'es': 'DESCUENTO',
    },
    'dblvv2sq': {
      'pt': '10% DE DESCONTO',
      'en': '10% DISCOUNT',
      'es': '10% DE DESCUENTO',
    },
    '5630x3mi': {
      'pt': 'ANUAL',
      'en': 'ANNUAL',
      'es': 'ANUAL',
    },
    'g743j0gs': {
      'pt': '\$119.90 ',
      'en': '\$119.90',
      'es': '\$119,90',
    },
    's53wp3oc': {
      'pt': ' por ano (',
      'en': 'per year (',
      'es': 'por año (',
    },
    'pd93i3f6': {
      'pt': ' por mês)',
      'en': 'per month)',
      'es': 'por mes)',
    },
    'onw4t1t6': {
      'pt': 'Cancele quando quiser',
      'en': 'Cancel anytime',
      'es': 'Cancelar en cualquier momento',
    },
    '9vxovh1d': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'ns2sq6op': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // addressDeliveryNoAuth
  {
    'cwc4ir03': {
      'pt': 'ENDEREÇOS',
      'en': 'ADDRESSES',
      'es': 'DIRECCIONES',
    },
    'q9qagp7p': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // membershipCancel
  {
    'rq8v7f7c': {
      'pt': 'AQUIPASS',
      'en': 'AQUIPASS',
      'es': 'AQUIPASS',
    },
    '6u2g6fzu': {
      'pt': 'VOCÊ PERDERÁ O ACESSO AOS BENEFÍCIOS.',
      'en': 'YOU WILL LOSE ACCESS TO BENEFITS.',
      'es': 'PERDERÁ EL ACCESO A LOS BENEFICIOS.',
    },
    'lgx312rl': {
      'pt': 'NÃO CANCELAR',
      'en': 'DO NOT CANCEL',
      'es': 'NO CANCELAR',
    },
    'mczllpjw': {
      'pt': 'SIM, CANCELAR',
      'en': 'YES, CANCEL',
      'es': 'SI, CANCELAR',
    },
    'eme7s29n': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // membershipManage
  {
    'cojxvzuw': {
      'pt': 'GERENCIAR ASSINATURA',
      'en': 'MANAGE SUBSCRIPTION',
      'es': 'GESTIONAR SUSCRIPCIÓN',
    },
    'lda5xg2i': {
      'pt': 'PLANO ATUAL',
      'en': 'CURRENT PLAN',
      'es': 'PLAN ACTUAL',
    },
    '8j5ejkkg': {
      'pt': 'AQUIPASS',
      'en': 'AQUIPASS',
      'es': 'AQUIPASS',
    },
    'yvmpwk7u': {
      'pt':
          'OBRIGADO POR SE TORNAR MEMBRO DO AQUIPASS! SEU PLANO DE 30 DIAS JÁ ESTÁ ATIVO E VOCÊ PODE APROVEITAR DESCONTOS EXCLUSIVOS, CASHBACK E BENEFÍCIOS ESPECIAIS DURANTE ESTE PERÍODO.',
      'en':
          'THANK YOU FOR BECOMING AN AQUIPASS MEMBER! YOUR 30-DAY PLAN IS NOW ACTIVE AND YOU CAN ENJOY EXCLUSIVE DISCOUNTS, CASHBACK AND SPECIAL BENEFITS DURING THIS PERIOD.',
      'es':
          '¡GRACIAS POR CONVERTIRSE EN MIEMBRO DE AQUIPASS! TU PLAN DE 30 DÍAS YA ESTÁ ACTIVO Y PODRÁS DISFRUTAR DE DESCUENTOS EXCLUSIVOS, CASHBACK Y BENEFICIOS ESPECIALES DURANTE ESTE PERIODO.',
    },
    'cev8ct8u': {
      'pt':
          'AGORA VOCÊ FAZ PARTE DO AQUIPASS! SEU PLANO MENSAL RECORRENTE JÁ ESTÁ ATIVO, E VOCÊ PODE USUFRUIR DE DESCONTOS EXCLUSIVOS, CASHBACK E MUITO MAIS!',
      'en':
          'YOU ARE NOW PART OF AQUIPASS! YOUR RECURRING MONTHLY PLAN IS ALREADY ACTIVE, AND YOU CAN ENJOY EXCLUSIVE DISCOUNTS, CASHBACK AND MUCH MORE!',
      'es':
          '¡AHORA ERES PARTE DE AQUIPASS! ¡TU PLAN MENSUAL RECURRENTE YA ESTÁ ACTIVO Y PODRÁS DISFRUTAR DE DESCUENTOS EXCLUSIVOS, CASHBACK Y MUCHO MÁS!',
    },
    '4ra979ic': {
      'pt':
          'PARABÉNS! AGORA VOCÊ FAZ PARTE DO AQUIPASS ANUAL, GARANTINDO BENEFÍCIOS EXCLUSIVOS POR UM ANO INTEIRO!',
      'en':
          'CONGRATULATIONS! YOU ARE NOW PART OF THE ANNUAL AQUIPASS, GUARANTEEING EXCLUSIVE BENEFITS FOR AN ENTIRE YEAR!',
      'es':
          '¡FELICIDADES! ¡AHORA ERES PARTE DEL AQUIPASS ANUAL, GARANTIZANDO BENEFICIOS EXCLUSIVOS DURANTE TODO UN AÑO!',
    },
    'c7aeul9q': {
      'pt': 'MAIS DETALHES',
      'en': 'MORE DETAILS',
      'es': 'MÁS DETALLES',
    },
    'cu255qvn': {
      'pt':
          'DURANTE A VIGÊNCIA DO SEU PLANO, NÃO É POSSÍVEL MIGRAR PARA O PLANO MENSAL OU ANUAL.\n\nSE DESEJAR CONTINUAR NO CLUBE APÓS OS 30 DIAS, BASTA ASSINAR UM NOVO PLANO AO FINAL DA SUA ASSINATURA ATUAL.',
      'en':
          'DURING THE TERM OF YOUR PLAN, IT IS NOT POSSIBLE TO MIGRATE TO THE MONTHLY OR ANNUAL PLAN.\n\nIF YOU WANT TO CONTINUE IN THE CLUB AFTER 30 DAYS, JUST SUBSCRIBE TO A NEW PLAN AT THE END OF YOUR CURRENT SUBSCRIPTION.',
      'es':
          'DURANTE LA VIGENCIA DE TU PLAN, NO ES POSIBLE MIGRAR AL PLAN MENSUAL O ANUAL.\n\nSI DESEAS CONTINUAR EN EL CLUB DESPUÉS DE 30 DÍAS, SOLO SUSCRÍBETE A UN NUEVO PLAN AL FINAL DE TU SUSCRIPCIÓN ACTUAL.',
    },
    '47heeqp4': {
      'pt':
          '💡 QUER MAIS ECONOMIA?\nSE DESEJAR MIGRAR PARA O PLANO ANUAL E GARANTIR UM DESCONTO ESPECIAL, BASTA ACESSAR SUA CONTA E FAZER O UPGRADE.',
      'en':
          '💡 WANT MORE SAVINGS?\nIF YOU WANT TO MOVE TO THE ANNUAL PLAN AND GET A SPECIAL DISCOUNT, JUST ACCESS YOUR ACCOUNT AND UPGRADE.',
      'es':
          '💡¿QUIERES MÁS AHORROS?\nSI QUIERES MIGRAR AL PLAN ANUAL Y OBTENER UN DESCUENTO ESPECIAL, SOLO ACCEDE A TU CUENTA Y ACTUALIZA.',
    },
    '4oddytod': {
      'pt':
          'SEU PLANO SERÁ RENOVADO AUTOMATICAMENTE AO FINAL DO PERÍODO CONTRATADO.\n\nCASO DESEJE MIGRAR PARA UM PLANO MENSAL OU DE 30 DIAS, SERÁ NECESSÁRIO CANCELAR A RENOVAÇÃO AUTOMÁTICA E AGUARDAR A VIGÊNCIA DO SEU PLANO ATUAL ANTES DE ASSINAR UM NOVO.',
      'en':
          'YOUR PLAN WILL BE AUTOMATICALLY RENEWED AT THE END OF THE CONTRACTED PERIOD.\n\nIF YOU WANT TO MIGRATE TO A MONTHLY OR 30-DAY PLAN, YOU WILL NEED TO CANCEL THE AUTOMATIC RENEWAL AND WAIT FOR YOUR CURRENT PLAN TO EXPIRE BEFORE SIGNING UP FOR A NEW ONE.',
      'es':
          'SU PLAN SE RENOVARÁ AUTOMÁTICAMENTE AL FINALIZAR EL PERIODO CONTRATADO.\n\nSI DESEA MIGRAR A UN PLAN MENSUAL O DE 30 DÍAS, DEBERÁ CANCELAR LA RENOVACIÓN AUTOMÁTICA Y ESPERAR A QUE SU PLAN ACTUAL VENCE ANTES DE SUSCRIBIRSE A UNO NUEVO.',
    },
    'ish56k2z': {
      'pt': 'TROCAR PLANO',
      'en': 'CHANGE PLAN',
      'es': 'PLAN DE CAMBIO',
    },
    'ugpokyv6': {
      'pt': 'CANCELAR PLANO',
      'en': 'CANCEL PLAN',
      'es': 'CANCELAR PLAN',
    },
    '9286y6pc': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // signup-step2
  {
    'w5swc0x3': {
      'pt': 'ENVIAMOS O CÓDIGO PARA SEU E-MAIL',
      'en': 'WE SENT THE CODE TO YOUR EMAIL',
      'es': 'TE ENVIAMOS EL CÓDIGO A TU CORREO ELECTRÓNICO',
    },
    '5xcczqzp': {
      'pt': 'INSIRA O CÓDIGO DE SEGURANÇA QUE ENVIAMOS PARA O\nSEU E-MAIL.',
      'en': 'ENTER THE SECURITY CODE WE SENT TO YOUR EMAIL.',
      'es':
          'INTRODUCE EL CÓDIGO DE SEGURIDAD QUE TE ENVIAMOS\nSU CORREO ELECTRÓNICO.',
    },
    '65natyom': {
      'pt': 'E-mail obrigatório.',
      'en': 'Email required.',
      'es': 'Se requiere correo electrónico.',
    },
    '9popwthb': {
      'pt': 'O e-mail não é válido.',
      'en': 'The email is not valid.',
      'es': 'El correo electrónico no es válido.',
    },
    'n0rq4cnl': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'pi3tejaj': {
      'pt': 'PARA REENVIAR O CÓDIGO, AGUARDE',
      'en': 'TO RESEND THE CODE, PLEASE WAIT',
      'es': 'PARA REENVIAR EL CÓDIGO, POR FAVOR ESPERE',
    },
    '9pp9ctgp': {
      'pt': 'ENVIAR NOVAMENTE',
      'en': 'SEND AGAIN',
      'es': 'ENVIAR OTRA VEZ',
    },
    'vafigqid': {
      'pt':
          'POR FAVOR, VERIFIQUE SUA CAIXA DE SPAM OU LIXO ELETRÔNICO! NOSSO E-MAIL PODE TER IDO PARA LÁ.',
      'en':
          'PLEASE CHECK YOUR SPAM OR JUNK MAIL FOLDER! OUR EMAIL MAY HAVE GONE THERE.',
      'es':
          '¡POR FAVOR REVISE SU CARPETA DE SPAM O CORREO BASURA! PUEDE QUE NUESTRO CORREO ELECTRÓNICO HAYA LLEGADO ALLÍ.',
    },
    'zv4qw1ta': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // settings
  {
    'btbpv8y1': {
      'pt': 'CONFIGURAÇÕES',
      'en': 'SETTINGS',
      'es': 'AJUSTES',
    },
    '0uihix0x': {
      'pt': 'GERENCIAR NOTIFICAÇÕES',
      'en': 'MANAGE NOTIFICATIONS',
      'es': 'GESTIONAR NOTIFICACIONES',
    },
    'hd6r9fox': {
      'pt': 'SOBRE ESTA VERSÃO',
      'en': 'ABOUT THIS VERSION',
      'es': 'ACERCA DE ESTA VERSIÓN',
    },
    'te82q2u0': {
      'pt': 'LIMPAR HISTÓRICO DE BUSCA',
      'en': 'CLEAR SEARCH HISTORY',
      'es': 'BORRAR HISTORIAL DE BÚSQUEDA',
    },
    '2t63mzml': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // rentalHouseSchedule
  {
    'xdcuc4on': {
      'pt': 'Mansão',
      'en': 'Mansion',
      'es': 'Palacio',
    },
    '97qs81jl': {
      'pt': '(6)',
      'en': '(6)',
      'es': '(6)',
    },
    '8uq6b1nh': {
      'pt': '\$64',
      'en': '\$64',
      'es': '\$64',
    },
    '0pnpm98d': {
      'pt': ' POR DIA',
      'en': 'PER DAY',
      'es': 'POR DÍA',
    },
    'cka7oytr': {
      'pt': 'NO CLUBE VOCÊ ECONOMIZA',
      'en': 'AT THE CLUB YOU SAVE',
      'es': 'EN EL CLUB AHORRAS',
    },
    'ynylsn3n': {
      'pt': ' \$',
      'en': '\$',
      'es': '\$',
    },
    'bvxj57c8': {
      'pt': '4.99',
      'en': '4.99',
      'es': '4,99',
    },
    '51qru7rv': {
      'pt': '5 PESSOAS',
      'en': '5 PEOPLE',
      'es': '5 PERSONAS',
    },
    '5mj0vh4e': {
      'pt': 'ELEVADOR',
      'en': 'ELEVATOR',
      'es': 'ASCENSOR',
    },
    'qypkyegh': {
      'pt': 'ADULTOS E CRIANÇAS',
      'en': 'ADULTS AND CHILDREN',
      'es': 'ADULTOS Y NIÑOS',
    },
    'ft9t68em': {
      'pt': 'PAGAR E RESERVAR',
      'en': 'PAY AND BOOK',
      'es': 'PAGAR Y RESERVAR',
    },
    '9yuyi69e': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // infoEdit
  {
    'pc6l1gsu': {
      'pt': 'EDITAR INFORMAÇÕES PESSOAIS',
      'en': 'EDIT PERSONAL INFORMATION',
      'es': 'EDITAR INFORMACIÓN PERSONAL',
    },
    'woagi3q0': {
      'pt': 'NOME COMPLETO*',
      'en': 'FULL NAME*',
      'es': 'NOMBRE COMPLETO*',
    },
    'dbnvn5a7': {
      'pt': 'PRIMEIRO NOME',
      'en': 'FIRST NAME',
      'es': 'NOMBRE DE PILA',
    },
    '5raimyjt': {
      'pt': ' SOBRENOME',
      'en': 'SURNAME',
      'es': 'APELLIDO',
    },
    'h5dofi8l': {
      'pt': 'ATUALIZAR INFORMAÇÕES',
      'en': 'UPDATE INFORMATION',
      'es': 'ACTUALIZAR INFORMACIÓN',
    },
    'xi0d3i3m': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // orderDetailsService
  {
    '79eexegf': {
      'pt': 'DETALHES DO AGENDAMENTO',
      'en': 'SCHEDULE DETAILS',
      'es': 'DETALLES DEL HORARIO',
    },
    '7ndkbx2y': {
      'pt': 'VER LOJA',
      'en': 'VIEW STORE',
      'es': 'VER TIENDA',
    },
    '6mje96kd': {
      'pt': 'AVALIAR PEDIDO',
      'en': 'EVALUATE ORDER',
      'es': 'EVALUAR ORDEN',
    },
    'rg2mm23z': {
      'pt': 'CRIAR EVENTO NO CALENDÁRIO DO CELULAR',
      'en': 'CREATE EVENT ON CELL PHONE CALENDAR',
      'es': 'CREAR EVENTO EN EL CALENDARIO DEL CELULAR',
    },
    'uay4pqs4': {
      'pt': 'ENDEREÇO',
      'en': 'ADDRESS',
      'es': 'DIRECCIÓN',
    },
    'r4cakhw8': {
      'pt': 'TODOS OS ITENS DO PEDIDO',
      'en': 'ALL ORDER ITEMS',
      'es': 'TODOS LOS ARTICULOS DEL PEDIDO',
    },
    'cxqxfkz4': {
      'pt': 'REMARCAR',
      'en': 'RESCHEDULE',
      'es': 'REPROGRAMAR',
    },
    'p3knutbw': {
      'pt': 'PROFISSIONAL',
      'en': 'PROFESSIONAL',
      'es': 'PROFESIONAL',
    },
    'yntbm6zd': {
      'pt': 'RESUMO DO PAGAMENTO',
      'en': 'PAYMENT SUMMARY',
      'es': 'RESUMEN DE PAGO',
    },
    'in1m5484': {
      'pt': 'SUBTOTAL',
      'en': 'SUBTOTAL',
      'es': 'TOTAL PARCIAL',
    },
    'fs409qk7': {
      'pt': 'IMPOSTO E TAXA DE SERVIÇO',
      'en': 'TAX AND SERVICE FEE',
      'es': 'IMPUESTOS Y TASAS DE SERVICIO',
    },
    'kkvw37o4': {
      'pt': 'TOTAL',
      'en': 'TOTAL',
      'es': 'TOTAL',
    },
    '2f4zumi2': {
      'pt': 'COM CLUBE VOCÊ ECONOMIZOU',
      'en': 'WITH CLUB YOU SAVED MONEY',
      'es': 'CON CLUB AHORRAS DINERO',
    },
    'nfr7jq1b': {
      'pt': '3% DE CASHBACK DE VOLTA',
      'en': '3% CASHBACK BACK',
      'es': '3% DE REEMBOLSO EN EFECTIVO',
    },
    'iqsep96c': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // rentalHouse
  {
    'ozur3xhq': {
      'pt': 'TODOS',
      'en': 'ALL',
      'es': 'TODO',
    },
    'v8pac6z7': {
      'pt': 'OFERTAS',
      'en': 'OFFERS',
      'es': 'OFERTAS',
    },
    'dhd649r6': {
      'pt': '4.5',
      'en': '4.5',
      'es': '4.5',
    },
    'thpefau3': {
      'pt': '(1.200)',
      'en': '(1,200)',
      'es': '(1.200)',
    },
    'ff59xuvl': {
      'pt': 'TESTE',
      'en': 'TEST',
      'es': 'PRUEBA',
    },
    'skf4wi3i': {
      'pt': '5.5 MILHAS',
      'en': '5.5 MILES',
      'es': '5,5 MILLAS',
    },
    '4m78mch1': {
      'pt': 'OS MAIS PEOCURADOS',
      'en': 'MOST WANTED',
      'es': 'Los más buscados',
    },
    'mbep9m8t': {
      'pt': 'HONDA CIVIC',
      'en': 'HONDA CIVIC',
      'es': 'Honda Cívico',
    },
    '333isweq': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    '3vaym5oy': {
      'pt': '49.99',
      'en': '49.99',
      'es': '49,99',
    },
    'wqzmvrkd': {
      'pt': ' POR DIA',
      'en': 'PER DAY',
      'es': 'POR DÍA',
    },
    '9lgz2beg': {
      'pt': 'NO CLUBE VOCÊ ECONOMIZA',
      'en': 'AT THE CLUB YOU SAVE',
      'es': 'EN EL CLUB AHORRAS',
    },
    '7pu6qnf4': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    't8otr5s8': {
      'pt': '4.99',
      'en': '4.99',
      'es': '4,99',
    },
    'abu80yy3': {
      'pt': 'NO CLUBE VOCÊ ECONOMIZA',
      'en': 'AT THE CLUB YOU SAVE',
      'es': 'EN EL CLUB AHORRAS',
    },
    'yt8zeelo': {
      'pt': ' \$',
      'en': '\$',
      'es': '\$',
    },
    'jlgkj6h6': {
      'pt': '4.99',
      'en': '4.99',
      'es': '4,99',
    },
    'u2rh6x7r': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // myCashBack
  {
    'n2ef3va2': {
      'pt': 'MEU CASHBACK',
      'en': 'MY CASHBACK',
      'es': 'MI REEMBOLSO',
    },
    'cefjxlwv': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // notificationsAndMessage
  {
    'egyh8lbs': {
      'pt': 'NOTIFICAÇÕES',
      'en': 'NOTIFICATIONS',
      'es': 'NOTIFICACIONES',
    },
    'n97x1fln': {
      'pt': 'NOTIFICAÇÕES',
      'en': 'NOTIFICATIONS',
      'es': 'NOTIFICACIONES',
    },
    'lj1uod8i': {
      'pt': 'JOAO, ENTREGA GRÁTIS DISPONÍVEL 😍',
      'en': 'JOAO, FREE DELIVERY AVAILABLE 😍',
      'es': 'JOAO, ENTREGA GRATUITA DISPONIBLE 😍',
    },
    '12o982nd': {
      'pt':
          'empresas com selo do clube ao \nlado tem entrega grátis, aproveite!',
      'en':
          'Companies with the club seal next to it have free delivery, take advantage!',
      'es':
          'empresas con el sello del club \nEl lado tiene entrega gratuita, ¡disfrútalo!',
    },
    'tkm6z9n0': {
      'pt': '08:35',
      'en': '08:35',
      'es': '08:35',
    },
    '2cuegnis': {
      'pt': 'JOAO, ENTREGA GRÁTIS DISPONÍVEL 😍',
      'en': 'JOAO, FREE DELIVERY AVAILABLE 😍',
      'es': 'JOAO, ENTREGA GRATUITA DISPONIBLE 😍',
    },
    'gfs23ovd': {
      'pt':
          'empresas com selo do clube ao \nlado tem entrega grátis, aproveite!',
      'en':
          'Companies with the club seal next to it have free delivery, take advantage!',
      'es':
          'empresas con el sello del club \nEl lado tiene entrega gratuita, ¡disfrútalo!',
    },
    '8oueocti': {
      'pt': '08:35',
      'en': '08:35',
      'es': '08:35',
    },
    'dnpzpuvg': {
      'pt': 'MENSAGENS',
      'en': 'MESSAGES',
      'es': 'MENSAJES',
    },
    'zgtxzk1b': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // step3
  {
    '3t3myr5o': {
      'pt': 'APAGAR CONTA',
      'en': 'DELETE ACCOUNT',
      'es': 'ELIMINAR CUENTA',
    },
    'j9zybgww': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'yff3fpb6': {
      'pt': 'ETAPA 3 DE 3',
      'en': 'STEP 3 OF 3',
      'es': 'PASO 3 DE 3',
    },
    'lzoqgroy': {
      'pt': 'ENVIAMOS EM SEU E-MAIL UM CÓDIGO PARA ENCERRAR SUA CONTA',
      'en': 'WE WILL SEND YOU A CODE TO CLOSE YOUR ACCOUNT IN YOUR EMAIL',
      'es':
          'TE ENVIAREMOS UN CÓDIGO PARA CERRAR TU CUENTA A TU CORREO ELECTRÓNICO',
    },
    'ydyh1u46': {
      'pt': 'AO ENCERRAR SUA CONTA VOCÊ VAI PERDER:',
      'en': 'WHEN YOU CLOSE YOUR ACCOUNT YOU WILL LOSE:',
      'es': 'AL CERRAR TU CUENTA PERDERÁS:',
    },
    'ktm2v351': {
      'pt': '* ACESSO À CONFIGURAÇÕES DE CONTA E GERENCIAMENTO;',
      'en': '* ACCESS TO ACCOUNT SETTINGS AND MANAGEMENT;',
      'es': '* ACCESO A LA CONFIGURACIÓN Y GESTIÓN DE LA CUENTA;',
    },
    's55ngdwf': {
      'pt': '*SEU CASHBACK DISPONÍVEL',
      'en': '*YOUR CASHBACK AVAILABLE',
      'es': '*TU REEMBOLSO DISPONIBLE',
    },
    'imvhrovx': {
      'pt': '*SEUS FAVORITOS E HISTÓRICO DE SOLICITAÇÕES',
      'en': '*YOUR FAVORITES AND REQUEST HISTORY',
      'es': '*TUS FAVORITOS Y HISTORIAL DE SOLICITUDES',
    },
    'zam3k93p': {
      'pt': 'APAGAR CONTA',
      'en': 'DELETE ACCOUNT',
      'es': 'ELIMINAR CUENTA',
    },
    'x3uxdb5g': {
      'pt': 'FALAR COM A AQUIBRAZIL',
      'en': 'TALK TO AQUIBRAZIL',
      'es': 'HABLA CON AQUIBRAZIL',
    },
    'uu0hbnx2': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // cart1
  {
    '6bfw8bgs': {
      'pt': 'SACOLA',
      'en': 'BAG',
      'es': 'BOLSA',
    },
    'qt91mzn0': {
      'pt': 'LIMPAR',
      'en': 'TO CLEAN',
      'es': 'PARA LIMPIAR',
    },
    '2srx5p0f': {
      'pt': 'ITENS SELECIONADOS',
      'en': 'SELECTED ITEMS',
      'es': 'ARTICULOS SELECCIONADOS',
    },
    'qu6m6axw': {
      'pt': 'ADICIONAR MAIS PRODUTOS',
      'en': 'ADD MORE PRODUCTS',
      'es': 'AGREGAR MÁS PRODUCTOS',
    },
    '169c5pti': {
      'pt': 'RESUMO DE VALORES',
      'en': 'SUMMARY OF VALUES',
      'es': 'RESUMEN DE VALORES',
    },
    'l8y0dita': {
      'pt': 'SUBTOTAL',
      'en': 'SUBTOTAL',
      'es': 'TOTAL PARCIAL',
    },
    '850w1ufv': {
      'pt': 'TAXA DE ENTREGA',
      'en': 'DELIVERY FEE',
      'es': 'TARIFA DE ENVÍO',
    },
    '90zluk8k': {
      'pt': 'IMPOSTO E TAXA DE SERVIÇO',
      'en': 'TAX AND SERVICE FEE',
      'es': 'IMPUESTOS Y TASAS DE SERVICIO',
    },
    'zue617bo': {
      'pt': 'TOTAL A PAGAR',
      'en': 'TOTAL PAYABLE',
      'es': 'TOTAL A PAGAR',
    },
    '9dguuow4': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZOU',
      'en': 'WITH AQUIPASS YOU SAVED',
      'es': 'CON AQUIPASS AHORRAS',
    },
    '3f4831bt': {
      'pt': 'VOCÊ GANHOU 3% DE CASHBACK',
      'en': 'YOU HAVE EARNED 3% CASHBACK',
      'es': 'HAS GANADO UN 3% DE REEMBOLSO EN EFECTIVO',
    },
    'itrgdsus': {
      'pt': '\$',
      'en': '',
      'es': '',
    },
    'vmkxf3u6': {
      'pt': ' / ',
      'en': '/',
      'es': '/',
    },
    'k2gfc8nr': {
      'pt': 'R\$ 34,90 /1 item',
      'en': 'R\$ 34.90 /1 item',
      'es': 'R\$ 34,90 /1 unidad',
    },
    'zwfi947a': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'k7bfldjb': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // filterCompany
  {
    'eon5wapv': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '4yvq1oh7': {
      'pt': 'BUSCAR PELO NOME DA LOJA',
      'en': 'SEARCH BY STORE NAME',
      'es': 'BUSCAR POR NOMBRE DE TIENDA',
    },
    'pkjtkip5': {
      'pt': 'RETIRADA',
      'en': 'WITHDRAWAL',
      'es': 'RETIRO',
    },
    'i2nbpj1i': {
      'pt': 'ENTREGA GRÁTIS',
      'en': 'FREE DELIVERY',
      'es': 'ENTREGA GRATUITA',
    },
    'nrumfqh0': {
      'pt': 'DESCONTO DO CLUBE',
      'en': 'CLUB DISCOUNT',
      'es': 'DESCUENTO DEL CLUB',
    },
    '7iis1wsd': {
      'pt': 'PREÇO',
      'en': 'PRICE',
      'es': 'PRECIO',
    },
    '71st3khq': {
      'pt': 'AVALIAÇÕES',
      'en': 'REVIEWS',
      'es': 'RESEÑAS',
    },
    'xgciutp6': {
      'pt': 'DISTÂNCIA',
      'en': 'DISTANCE',
      'es': 'DISTANCIA',
    },
    'ej1x1uby': {
      'pt': 'Nenhum resultado encontrado',
      'en': 'No results found',
      'es': 'No se encontraron resultados',
    },
    'w4ia7ydc': {
      'pt': 'Ainda não possuimos empresa nesta categoria',
      'en': 'We do not have any companies in this category yet.',
      'es': 'Todavía no tenemos ninguna empresa en esta categoría.',
    },
  },
  // homeNoAuth
  {
    'lxk2rf4a': {
      'pt': 'CRIAR CONTA',
      'en': 'CREATE ACCOUNT',
      'es': 'CREAR UNA CUENTA',
    },
    '3o3ulfhh': {
      'pt': 'PROMOS DO MÊS DELIVERY',
      'en': 'DELIVERY MONTH PROMOS',
      'es': 'PROMOS DE ENTREGA POR MES',
    },
    'arz79l2i': {
      'pt': 'NOSSO CLUB DE PARCEIROS',
      'en': 'OUR PARTNER CLUB',
      'es': 'NUESTRO CLUB SOCIO',
    },
    '27tfwftx': {
      'pt': 'TODAS AS LOJAS',
      'en': 'ALL STORES',
      'es': 'TODAS LAS TIENDAS',
    },
    '3n9ailnl': {
      'pt': 'CATEGORIA',
      'en': 'CATEGORY',
      'es': 'CATEGORÍA',
    },
    'negp2d3y': {
      'pt': 'RETIRADA',
      'en': 'WITHDRAWAL',
      'es': 'RETIRO',
    },
    '5l0nbwxm': {
      'pt': 'ENTREGA GRÁTIS',
      'en': 'FREE DELIVERY',
      'es': 'ENTREGA GRATUITA',
    },
    'pjoy45va': {
      'pt': 'DISTÂNCIA',
      'en': 'DISTANCE',
      'es': 'DISTANCIA',
    },
    'l1y8scyn': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // addressDeliveryAddEdit
  {
    '093znuxl': {
      'pt': 'RUA (OBRIGATÓRIO)',
      'en': 'STREET (MANDATORY)',
      'es': 'CALLE (OBLIGATORIO)',
    },
    'dtwc3jxx': {
      'pt': 'Digite aqui o nome da rua',
      'en': 'Enter the street name here',
      'es': 'Introduzca el nombre de la calle aquí',
    },
    '7xohm1t6': {
      'pt': 'NÚMERO (OBRIGATÓRIO)',
      'en': 'NUMBER (MANDATORY)',
      'es': 'NÚMERO (OBLIGATORIO)',
    },
    'za1zhh6l': {
      'pt': 'Digite aqui o número',
      'en': 'Enter the number here',
      'es': 'Introduzca el número aquí',
    },
    'jboxf5l9': {
      'pt': 'ENDEREÇO SEM NÚMERO',
      'en': 'ADDRESS WITHOUT NUMBER',
      'es': 'DIRECCIÓN SIN NUMERO',
    },
    'ir0pl8lj': {
      'pt': 'COMPLEMENTO',
      'en': 'COMPLEMENT',
      'es': 'COMPLEMENTAR',
    },
    'pm6d9hsc': {
      'pt': 'Digite aqui o complemento',
      'en': 'Enter the complement here',
      'es': 'Introduzca el complemento aquí',
    },
    'cbkek9fj': {
      'pt': 'PONTO DE REFERÊNCIA (OBRIGATÓRIO)',
      'en': 'REFERENCE POINT (MANDATORY)',
      'es': 'PUNTO DE REFERENCIA (OBLIGATORIO)',
    },
    'uyf99v9i': {
      'pt': 'Ex: Próximo ao supermercado',
      'en': 'Ex: Near the supermarket',
      'es': 'Ej: Cerca del supermercado',
    },
    'asgzsjld': {
      'pt': 'FAVORITAR ENDEREÇO (OBRIGATÓRIO)',
      'en': 'FAVORITE ADDRESS (MANDATORY)',
      'es': 'DIRECCIÓN FAVORITA (OBLIGATORIA)',
    },
    'wzdomm4w': {
      'pt': 'CASA',
      'en': 'HOME',
      'es': 'HOGAR',
    },
    'yvmp38y8': {
      'pt': 'TRABALHO',
      'en': 'WORK',
      'es': 'TRABAJAR',
    },
    'w892ndy2': {
      'pt': 'APARTAMENTO',
      'en': 'APARTMENT',
      'es': 'DEPARTAMENTO',
    },
    'fyq1lyyi': {
      'pt': 'HOTEL',
      'en': 'HOTEL',
      'es': 'HOTEL',
    },
    'gqlcp0as': {
      'pt': 'OUTRO',
      'en': 'OTHER',
      'es': 'OTRO',
    },
    'ddgja18g': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // productDetails
  {
    'ga6z1sxc': {
      'pt': 'DETALHES DO PRODUTO',
      'en': 'PRODUCT DETAILS',
      'es': 'DETALLES DEL PRODUCTO',
    },
    '9h6aw147': {
      'pt':
          'AirPods Pro (2ª geração) com estojo de recarga MagSafe (USB-C) Branco',
      'en':
          'AirPods Pro (2nd generation) with MagSafe Charging Case (USB-C) White',
      'es':
          'AirPods Pro (2.ª generación) con estuche de carga MagSafe (USB-C) Blanco',
    },
    '4ia1xq2e': {
      'pt': 'De \$159.99',
      'en': 'From \$159.99',
      'es': 'Desde \$159.99',
    },
    '6owqe4e1': {
      'pt': 'Por \$63.99',
      'en': 'For \$63.99',
      'es': 'Por \$63,99',
    },
    'fcbuw3a2': {
      'pt': '60%',
      'en': '60%',
      'es': '60%',
    },
    'hnepn58u': {
      'pt': 'ENTREGA',
      'en': 'DELIVERY',
      'es': 'ENTREGA',
    },
    'z8d03pae': {
      'pt': 'Casa',
      'en': 'Home',
      'es': 'Hogar',
    },
    'ifbjkrbq': {
      'pt':
          'Rua Padre Valdevino, 1400, Joaquim Távora, \nFortaleza-CE, Brasil.',
      'en':
          'Padre Valdevino Street, 1400, Joaquim Tavora, \nFortaleza-CE, Brazil.',
      'es':
          'Calle Padre Valdevino 1400, Joaquim Tavora, \nFortaleza-CE, Brasil.',
    },
    'li2pkhw6': {
      'pt': 'Apto. 1002, Próximo ao Hospital Geral.',
      'en': 'Apt. 1002, Near the General Hospital.',
      'es': 'Apto. 1002, Cerca del Hospital General.',
    },
    'ke4y1l5w': {
      'pt': 'Chegarão em até ',
      'en': 'They will arrive within',
      'es': 'Llegarán dentro de',
    },
    'qzry6xa1': {
      'pt': '13 dias úteis',
      'en': '13 business days',
      'es': '13 días hábiles',
    },
    'l3zz3ozg': {
      'pt': 'Chegaram em até 13 dias úteis',
      'en': 'Arrived within 13 business days',
      'es': 'Llegó dentro de 13 días hábiles.',
    },
    '0me128e6': {
      'pt': 'INFORMAÇÕES DO PRODUTO',
      'en': 'PRODUCT INFORMATION',
      'es': 'INFORMACIÓN DEL PRODUCTO',
    },
    '0f34n9jx': {
      'pt': 'DESCRIÇÃO DO PRODUTO',
      'en': 'PRODUCT DESCRIPTION',
      'es': 'DESCRIPCIÓN DEL PRODUCTO',
    },
    'n1u7gd2u': {
      'pt': 'ESPECIFICAÇÕES TÉCNICAS',
      'en': 'TECHNICAL SPECIFICATIONS',
      'es': 'ESPECIFICACIONES TÉCNICAS',
    },
    'lvg02q0c': {
      'pt': 'COMPRAR AGORA',
      'en': 'BUY NOW',
      'es': 'COMPRAR AHORA',
    },
    'sowpzcjb': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // signup-step4
  {
    'bshrbczl': {
      'pt': 'ENVIAMOS O CÓDIGO PARA SEU CELULAR',
      'en': 'WE SEND THE CODE TO YOUR CELL PHONE',
      'es': 'TE ENVIAMOS EL CÓDIGO A TU CELULAR',
    },
    'tdkavuqk': {
      'pt': 'E-mail obrigatório.',
      'en': 'Email required.',
      'es': 'Se requiere correo electrónico.',
    },
    '0amlmgs3': {
      'pt': 'O e-mail não é válido.',
      'en': 'The email is not valid.',
      'es': 'El correo electrónico no es válido.',
    },
    'l93mslqo': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable.',
    },
    'kihk0rky': {
      'pt': 'PARA REENVIAR O CÓDIGO, AGUARDE',
      'en': 'TO RESEND THE CODE, PLEASE WAIT',
      'es': 'PARA REENVIAR EL CÓDIGO, POR FAVOR ESPERE',
    },
    'd1qaeg7x': {
      'pt': 'ENVIAR NOVAMENTE',
      'en': 'SEND AGAIN',
      'es': 'ENVIAR OTRA VEZ',
    },
    'dvjt7136': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // HistoricoDePagamento
  {
    'r1mby4ka': {
      'pt': 'HISTÓRICO DE PAGAMENTOS',
      'en': 'PAYMENT HISTORY',
      'es': 'HISTORIAL DE PAGOS',
    },
    'n4xg2s09': {
      'pt': 'BUSCAR POR DATA, LOJA OU VALOR...',
      'en': 'SEARCH BY DATE, STORE OR VALUE...',
      'es': 'BUSCAR POR FECHA, TIENDA O VALOR...',
    },
    'arwnam4x': {
      'pt': 'DELIVERY',
      'en': 'DELIVERY',
      'es': 'ENTREGA',
    },
    'htx5ptel': {
      'pt': 'AGENDAMENTOS',
      'en': 'APPOINTMENTS',
      'es': 'EQUIPO',
    },
    '6zd71xf9': {
      'pt': 'LOCAÇÃO',
      'en': 'RENTAL',
      'es': 'ALQUILER',
    },
    'qpedyych': {
      'pt': 'Burger King - Iguatemi',
      'en': 'Burger King - Iguatemi',
      'es': 'Burger King - Iguatemi',
    },
    'p0vjg8o4': {
      'pt': 'Agendamento n° 0926 - 04/11/2024',
      'en': 'Appointment No. 0926 - 11/04/2024',
      'es': 'Cita No. 0926 - 04/11/2024',
    },
    'nr0r6mgx': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    'ssbxq9yo': {
      'pt': '119.90',
      'en': '119.90',
      'es': '119,90',
    },
    'isjxjwlq': {
      'pt': 'Master débito',
      'en': 'Master debit',
      'es': 'Débito maestro',
    },
    '37kkax6y': {
      'pt': 'Burger King - Iguatemi',
      'en': 'Burger King - Iguatemi',
      'es': 'Burger King - Iguatemi',
    },
    'zlv91nrr': {
      'pt': 'Agendamento n° 0926 - 04/11/2024',
      'en': 'Appointment No. 0926 - 11/04/2024',
      'es': 'Cita No. 0926 - 04/11/2024',
    },
    'd0x3ejvr': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    '37r239md': {
      'pt': '119.90',
      'en': '119.90',
      'es': '119,90',
    },
    '2uvl3o0w': {
      'pt': 'Master débito',
      'en': 'Master debit',
      'es': 'Débito maestro',
    },
    'yw4secnf': {
      'pt': 'Burger King - Iguatemi',
      'en': 'Burger King - Iguatemi',
      'es': 'Burger King - Iguatemi',
    },
    '36br59mk': {
      'pt': 'Agendamento n° 0926 - 04/11/2024',
      'en': 'Appointment No. 0926 - 11/04/2024',
      'es': 'Cita No. 0926 - 04/11/2024',
    },
    'ibwp9cmp': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    'e65zd6ui': {
      'pt': '119.90',
      'en': '119.90',
      'es': '119,90',
    },
    '99gvk36d': {
      'pt': 'Master débito',
      'en': 'Master debit',
      'es': 'Débito maestro',
    },
    'oii0ovxu': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // partner
  {
    '48zrmnrv': {
      'pt': '---------------------------------------',
      'en': '---------------------------------------',
      'es': '---------------------------------------',
    },
    'l54zgxnn': {
      'pt': 'TERMOS E CONDIÇÕES',
      'en': 'TERMS AND CONDITIONS',
      'es': 'TÉRMINOS Y CONDICIONES',
    },
    '4zns16fe': {
      'pt': 'USAR DESCONTO',
      'en': 'USE DISCOUNT',
      'es': 'USAR DESCUENTO',
    },
    '6leillmy': {
      'pt': 'COPIAR CÓDIGO',
      'en': 'COPY CODE',
      'es': 'COPIAR CÓDIGO',
    },
    '41hif3cv': {
      'pt': 'VÁLIDO ENQUANTO MEMBRO AQUIPASS.',
      'en': 'VALID AS AN AQUIPASS MEMBER.',
      'es': 'VÁLIDO COMO MIEMBRO DE AQUIPASS.',
    },
    'wcwv2vuq': {
      'pt': 'REGRAS DE USO',
      'en': 'RULES OF USE',
      'es': 'REGLAS DE USO',
    },
    'x5ulzk13': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // temp3-appointment
  {
    '5rpqq4ia': {
      'pt': 'SOLICITAR MINHA RESERVA',
      'en': 'REQUEST MY RESERVATION',
      'es': 'SOLICITAR MI RESERVA',
    },
    'x1i4wqw7': {
      'pt': 'D',
      'en': 'D',
      'es': 'D',
    },
    '5wok2w0y': {
      'pt': 'S',
      'en': 'S',
      'es': 'S',
    },
    '212mt88n': {
      'pt': 'T',
      'en': 'T',
      'es': 'yo',
    },
    'fbyfnpoj': {
      'pt': 'Q',
      'en': 'Q',
      'es': 'Q',
    },
    'exfga09n': {
      'pt': 'Q',
      'en': 'Q',
      'es': 'Q',
    },
    'j0xgdydw': {
      'pt': 'S',
      'en': 'S',
      'es': 'S',
    },
    '2pgun3qj': {
      'pt': 'S',
      'en': 'S',
      'es': 'S',
    },
    'am1b2klm': {
      'pt': 'ESCOLHA O(A) PROFISSIONAL',
      'en': 'CHOOSE THE PROFESSIONAL',
      'es': 'ELIGE AL PROFESIONAL',
    },
    'k8x8gxjg': {
      'pt': 'HORÁRIOS DISPONÍVEIS',
      'en': 'AVAILABLE TIMES',
      'es': 'HORARIOS DISPONIBLES',
    },
    '70g3j215': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // editPhone
  {
    'g0nkke12': {
      'pt': 'EDITAR TELEFONE',
      'en': 'EDIT PHONE',
      'es': 'EDITAR TELÉFONO',
    },
    'ucd5a7uk': {
      'pt': 'DIGITE O SEU NÚMERO DE TELEFONE',
      'en': 'ENTER YOUR PHONE NUMBER',
      'es': 'INTRODUCE TU NÚMERO DE TELÉFONO',
    },
    'ipm0pk2t': {
      'pt':
          'Aqui estão os dados de acesso a sua conta AquiBrazil. Você usará esse e-mail para receber mensagens fazer login e recuperar sua conta. ',
      'en':
          'Here are the login details for your AquiBrazil account. You will use this email to receive messages to log in and recover your account.',
      'es':
          'Aquí están los datos de acceso a su cuenta AquiBrazil. Utilizarás este correo electrónico para recibir mensajes para iniciar sesión y recuperar tu cuenta.',
    },
    'r6uc1z55': {
      'pt': 'CELULAR',
      'en': 'CELL PHONE',
      'es': 'TELÉFONO MÓVIL',
    },
    'y5tlib8i': {
      'pt': 'COMO DESEJA RECEBER O CÓDIGO?',
      'en': 'HOW DO YOU WANT TO RECEIVE THE CODE?',
      'es': '¿CÓMO QUIERES RECIBIR EL CÓDIGO?',
    },
    'w9qlplwe': {
      'pt': 'RECEBER POR SMS',
      'en': 'RECEIVE BY SMS',
      'es': 'RECIBIR POR SMS',
    },
    'yexnukyx': {
      'pt': 'RECEBER POR WHATSAPP',
      'en': 'RECEIVE BY WHATSAPP',
      'es': 'RECIBIR POR WHATSAPP',
    },
    'xd0s073a': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // addressDeliveryMap
  {
    'uuvvcvb2': {
      'pt': 'ENDEREÇO',
      'en': 'ADDRESS',
      'es': 'DIRECCIÓN',
    },
    '5z0i9jgg': {
      'pt': 'CONFIRMAR LOCALIZAÇÃO',
      'en': 'CONFIRM LOCATION',
      'es': 'CONFIRMAR UBICACIÓN',
    },
    'ktakkzuu': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // temp7-checkout
  {
    'zwjftlv6': {
      'pt': 'CONFIRMAR E PAGAR',
      'en': 'CONFIRM AND PAY',
      'es': 'CONFIRMAR Y PAGAR',
    },
    '23z84xsz': {
      'pt': 'AGENDAMENTO - SERVIÇO',
      'en': 'APPOINTMENT - SERVICE',
      'es': 'CITA - SERVICIO',
    },
    'ubozspnc': {
      'pt': 'RESUMO DO AGENDAMENTO',
      'en': 'SCHEDULE SUMMARY',
      'es': 'RESUMEN DEL PROGRAMA',
    },
    'rsn4jz8x': {
      'pt': 'LIMPAR TUDO',
      'en': 'CLEAR ALL',
      'es': 'BORRAR TODO',
    },
    '7wdo6w05': {
      'pt': 'PROFISSIONAL:',
      'en': 'PROFESSIONAL:',
      'es': 'PROFESIONAL:',
    },
    'g2anm5vy': {
      'pt': 'Escolha por mim',
      'en': 'Choose for me',
      'es': 'Elige por mi',
    },
    'cg3cz5yw': {
      'pt': 'PRODUTOS DA LOJA',
      'en': 'STORE PRODUCTS',
      'es': 'PRODUCTOS DE LA TIENDA',
    },
    'f6yrb9gb': {
      'pt': 'LIMPAR TUDO',
      'en': 'CLEAR ALL',
      'es': 'BORRAR TODO',
    },
    '17jhqgds': {
      'pt': 'RESUMO DO PAGAMENTO',
      'en': 'PAYMENT SUMMARY',
      'es': 'RESUMEN DE PAGO',
    },
    'ogyfflfh': {
      'pt': 'SUBTOTAL',
      'en': 'SUBTOTAL',
      'es': 'TOTAL PARCIAL',
    },
    'qvzcwwnm': {
      'pt': 'IMPOSTO E TAXA DE SERVIÇO',
      'en': 'TAX AND SERVICE FEE',
      'es': 'IMPUESTOS Y TASAS DE SERVICIO',
    },
    'upp4bzny': {
      'pt': 'TOTAL A PAGAR ',
      'en': 'TOTAL PAYABLE',
      'es': 'TOTAL A PAGAR',
    },
    'w6ix2pqj': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZOU',
      'en': 'WITH AQUIPASS YOU SAVED',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'veawm8yd': {
      'pt': 'VOCÊ GANHOU 3% DE CASHBACK',
      'en': 'YOU HAVE EARNED 3% CASHBACK',
      'es': 'HAS GANADO UN 3% DE REEMBOLSO EN EFECTIVO',
    },
    '50l44h0c': {
      'pt': 'CONFIRMAR AGENDAMENTO',
      'en': 'CONFIRM APPOINTMENT',
      'es': 'CONFIRMAR CITA',
    },
    'm8xam590': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // cart4
  {
    'ab21gizi': {
      'pt': 'SACOLA',
      'en': 'BAG',
      'es': 'BOLSA',
    },
    'yzgx2wzg': {
      'pt': 'RESUMO DO PAGAMENTO',
      'en': 'PAYMENT SUMMARY',
      'es': 'RESUMEN DE PAGO',
    },
    '0hwxgwdo': {
      'pt': 'SUBTOTAL',
      'en': 'SUBTOTAL',
      'es': 'TOTAL PARCIAL',
    },
    'mnuczj4y': {
      'pt': 'GORJETA',
      'en': 'TIP',
      'es': 'CONSEJO',
    },
    'iddk1t6d': {
      'pt': 'TAXA DE ENTREGA',
      'en': 'DELIVERY FEE',
      'es': 'TARIFA DE ENVÍO',
    },
    'qpz2x7ef': {
      'pt': 'IMPOSTO E TAXA DE SERVIÇO',
      'en': 'TAX AND SERVICE FEE',
      'es': 'IMPUESTOS Y TASAS DE SERVICIO',
    },
    'sffdnlms': {
      'pt': 'TOTAL A PAGAR',
      'en': 'TOTAL PAYABLE',
      'es': 'TOTAL A PAGAR',
    },
    '7cjakgmh': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZOU',
      'en': 'WITH AQUIPASS YOU SAVED',
      'es': 'CON AQUIPASS AHORRAS',
    },
    '57izihok': {
      'pt': 'VOCÊ GANHOU 3% DE CASHBACK',
      'en': 'YOU HAVE EARNED 3% CASHBACK',
      'es': 'HAS GANADO UN 3% DE REEMBOLSO EN EFECTIVO',
    },
    'wlrruivt': {
      'pt':
          'POR FAVOR, INFORME QUAISQUER INSTRUÇÕES ADICIONAIS PARA QUE POSSAMOS ORGANIZAR A ENTREGA CONFORME SUA PREFERÊNCIA.',
      'en':
          'PLEASE PROVIDE ANY ADDITIONAL INSTRUCTIONS SO WE CAN ARRANGE DELIVERY AS PER YOUR PREFERENCE.',
      'es':
          'PROPORCIONE INSTRUCCIONES ADICIONALES PARA QUE PODAMOS ORGANIZAR LA ENTREGA SEGÚN SU PREFERENCIA.',
    },
    'vgtbdikf': {
      'pt': 'REVISAR PEDIDO',
      'en': 'REVIEW ORDER',
      'es': 'ORDEN DE REVISIÓN',
    },
    'r3oszq35': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // resetPassword-step3
  {
    '1yrn9axj': {
      'pt': 'NOVA SENHA',
      'en': 'NEW PASSWORD',
      'es': 'NUEVA CONTRASEÑA',
    },
    'ai6vkr54': {
      'pt': 'DIGITE UMA NOVA SENHA PARA SUA CONTA',
      'en': 'ENTER A NEW PASSWORD FOR YOUR ACCOUNT',
      'es': 'INTRODUZCA UNA NUEVA CONTRASEÑA PARA SU CUENTA',
    },
    '4cwqnx9h': {
      'pt': 'DIGITE UMA NOVA SENHA',
      'en': 'ENTER A NEW PASSWORD',
      'es': 'INTRODUZCA UNA NUEVA CONTRASEÑA',
    },
    'b7a7gz9p': {
      'pt': 'REPITA SUA NOVA SENHA',
      'en': 'REPEAT YOUR NEW PASSWORD',
      'es': 'REPITE TU NUEVA CONTRASEÑA',
    },
    'c5tx6ykr': {
      'pt': 'NO MÍNIMO ',
      'en': 'AT LEAST',
      'es': 'AL MENOS',
    },
    'dj1zctid': {
      'pt': '8 CARACTERES, ',
      'en': '8 CHARACTERS,',
      'es': '8 PERSONAJES,',
    },
    'omyhjwmo': {
      'pt': 'CONTENDO LETRAS E NÚMEROS.',
      'en': 'CONTAINING LETTERS AND NUMBERS.',
      'es': 'CONTIENE LETRAS Y NÚMEROS.',
    },
    '9hx8t4q2': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    '4uxnuus7': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'fhwru753': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    '5oa3tue6': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    '7448jkoz': {
      'pt': 'SALVAR NOVA SENHA',
      'en': 'SAVE NEW PASSWORD',
      'es': 'GUARDAR NUEVA CONTRASEÑA',
    },
    'cc2y7hx3': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // policy_azul
  {
    'k9c8u5rv': {
      'pt': 'TERMOS E CONDIÇÕES',
      'en': 'TERMS AND CONDITIONS',
      'es': 'TÉRMINOS Y CONDICIONES',
    },
    'l0rwppyf': {
      'pt':
          'TERMOS E CONDIÇÕES PARA A TROCA DE CASHBACK POR PONTOS AZUL FIDELIDADE',
      'en':
          'TERMS AND CONDITIONS FOR EXCHANGING CASHBACK FOR AZUL FIDELITY POINTS',
      'es':
          'TÉRMINOS Y CONDICIONES PARA EL CANJE DE REEMBOLSO POR PUNTOS AZUL FIDELITY',
    },
    'p5mkw2x7': {
      'pt':
          '1. Disposições Gerais\n\n1.1. Estes Termos e Condições estabelecem as regras para a conversão de cashback acumulado\nna plataforma AquiBrazil em pontos no programa Azul Fidelidade.\n1.2. Ao solicitar a troca de cashback por pontos, o usuário declara estar ciente e de acordo com\nestes Termos e Condições.\n1.3. A AquiBrazil reserva-se o direito de modificar, suspender ou encerrar o programa de conversão\nde cashback em pontos Azul Fidelidade, a qualquer momento, com aviso prévio razoável. É\nresponsabilidade do usuário consultar periodicamente estes Termos e Condições para verificar\natualizações.\n\n2. Acúmulo e Requisitos para Troca\n\n2.1. O cashback acumulado poderá ser convertido em pontos Azul Fidelidade desde que tenha\natingido o valor mínimo de US\$10,00 (dez dólares americanos).\n2.2. A conversão será feita na proporção de US\$10,00 para 1.000 (mil) pontos no Azul Fidelidade.\n2.3. O pedido de conversão do cashback para pontos Azul Fidelidade é irreversível e não pode ser\ncancelado ou estornado após a solicitação.\n2.4. Apenas cashback liberado e disponível na conta do usuário poderá ser convertido, não sendo\npermitido converter valores pendentes ou em processamento.\n\n3. Vinculação e Transferência dos Pontos\n\n3.1. Os pontos serão vinculados e transferidos exclusivamente para a conta Azul Fidelidade\ncorrespondente ao CPF informado pelo cliente. É responsabilidade exclusiva do cliente fornecer\ncorretamente todos os dados necessários para a transferência dos pontos.\n3.2. A AquiBrazil não se responsabiliza por erros no fornecimento das informações, incluindo o\nenvio para CPF incorreto ou divergente do titular da conta Azul Fidelidade.\n3.3. Caso o cliente não possua uma conta ativa no Azul Fidelidade, os pontos permanecerão\nvinculados ao CPF informado até a abertura da conta. A criação e manutenção da conta Azul\nFidelidade são de responsabilidade exclusiva do usuário.\n\n4. Disponibilidade dos Pontos\n\n4.1. Os pontos convertidos estarão disponíveis na conta Azul Fidelidade em até 72 horas úteis após\na confirmação da troca.\n4.2. A disponibilização dos pontos pode sofrer atrasos por razões técnicas ou operacionais da Azul\nFidelidade, não cabendo à AquiBrazil qualquer responsabilidade pela continuidade ou manutenção\ndas regras do referido programa. Em caso de problemas no crédito dos pontos, o usuário deverá\ncontatar diretamente a Azul Fidelidade.\n\n5. Limitação de Responsabilidade\n\n5.1. A AquiBrazil atua exclusivamente como intermediadora na conversão do cashback para pontos\nAzul Fidelidade e não será responsável por falhas, atrasos ou intercorrências ocorridas após a\ntransferência dos pontos.\n5.2. A AquiBrazil não se responsabiliza por restrições, bloqueios, cancelamentos ou expirações dos\npontos já creditados na conta Azul Fidelidade do usuário.\n5.3. Em nenhuma hipótese, a AquiBrazil será responsável por danos diretos ou indiretos, lucros\ncessantes ou prejuízos decorrentes da conversão de cashback em pontos Azul Fidelidade.\n5.4. O usuário concorda em indenizar e isentar a AquiBrazil de qualquer responsabilidade\ndecorrente de disputas relacionadas à conversão de cashback para pontos Azul Fidelidade.\n\n6. Prevenção de Fraude e Uso Indevido\n\n6.1. A AquiBrazil poderá auditar e monitorar as conversões de cashback para prevenir práticas\nfraudulentas ou abusivas.\n6.2. Caso seja identificada fraude ou uso indevido, a AquiBrazil poderá bloquear conversões,\nsuspender ou encerrar contas e adotar medidas legais cabíveis.\n\n7. Expiração e Validade dos Pontos\n\n7.1. Os pontos convertidos estarão sujeitos às regras de expiração e validade estabelecidas pelo\nprograma Azul Fidelidade.\n7.2. A gestão dos pontos após a conversão é responsabilidade exclusiva do usuário, que deve\nacompanhar as condições do programa Azul Fidelidade.\n\n8. Suporte e Contato\n\n8.1. A AquiBrazil prestará suporte exclusivamente para dúvidas e problemas relacionados ao\nprocesso de conversão.\n8.2. Questões sobre resgate, uso ou disponibilidade dos pontos devem ser tratadas diretamente\ncom a Azul Fidelidade.\n\n9. Exceções e Casos Omissos\n\n9.1. Situações não previstas nestes Termos serão avaliadas pela AquiBrazil conforme suas\npolíticas internas e a legislação vigente.\n\n10. Disposições Finais\n\n10.1. Estes Termos são regidos pelas leis dos Estados Unidos da América, especificamente do\nestado da Flórida.\n10.2. Em caso de disputas, fica eleito o foro da cidade de Miami, Flórida, renunciando-se a\nqualquer outro.\n10.3. A continuidade do uso da plataforma implica a aceitação integral e contínua destes Termos e\nCondições, reafirmando o compromisso do usuário com as regras aqui estabelecidas.\n\nAo solicitar a conversão do cashback para pontos Azul Fidelidade, o usuário concorda\nexpressamente com todos os termos acima.',
      'en':
          '1. General Provisions\n\n1.1. These Terms and Conditions establish the rules for converting cashback accumulated on the AquiBrazil platform into points in the Azul Fidelidade program.\n\n1.2. By requesting the exchange of cashback for points, the user declares to be aware of and in agreement with these Terms and Conditions.\n\n1.3. AquiBrazil reserves the right to modify, suspend or terminate the cashback conversion program into Azul Fidelidade points, at any time, with reasonable prior notice. It is the user\'s responsibility to periodically consult these Terms and Conditions to check for updates.\n\n2. Accumulation and Exchange Requirements\n\n2.1. The accumulated cashback may be converted into Azul Fidelidade points provided that it has reached the minimum value of US\$10.00 (ten US dollars).\n\n2.2. The conversion will be made at the rate of US\$10.00 for 1,000 (one thousand) Azul Fidelidade points. 2.3. The request to convert cashback to Azul Fidelidade points is irreversible and cannot be cancelled or refunded after the request. 2.4. Only cashback that has been released and is available in the user\'s account may be converted. It is not permitted to convert pending or processing amounts. \n\n3. Linking and Transferring Points\n\n3.1. Points will be linked and transferred exclusively to the Azul Fidelidade account corresponding to the CPF provided by the customer. It is the customer\'s sole responsibility to correctly provide all the data necessary to transfer the points. 3.2. AquiBrazil is not responsible for errors in the provision of information, including sending it to an incorrect or different CPF than the holder of the Azul Fidelidade account. 3.3. If the customer does not have an active Azul Fidelidade account, the points will remain linked to the CPF provided until the account is opened. The creation and maintenance of the Azul Fidelidade account are the sole responsibility of the user. \n\n4. Availability of Points\n\n4.1. The converted points will be available in the Azul Fidelidade account within 72 business hours after confirmation of the exchange.\n\n4.2. The availability of points may be delayed due to technical or operational reasons on the part of Azul Fidelidade, and AquiBrazil is not responsible for the continuity or maintenance of the rules of the aforementioned program. In the event of problems with crediting points, the user must contact Azul Fidelidade directly.\n\n5. Limitation of Liability\n\n5.1. AquiBrazil acts exclusively as an intermediary in the conversion of cashback into Azul Fidelidade points and will not be responsible for failures, delays or incidents occurring after the transfer of points.\n\n5.2. AquiBrazil is not responsible for restrictions, blocks, cancellations or expirations of points already credited to the user\'s Azul Fidelidade account.\n\n5.3. Under no circumstances shall AquiBrazil be liable for direct or indirect damages, lost profits or losses arising from the conversion of cashback into Azul Fidelidade points. 5.4. The user agrees to indemnify and hold AquiBrazil harmless from any liability arising from disputes related to the conversion of cashback into Azul Fidelidade points. \n\n6. Prevention of Fraud and Misuse \n\n6.1. AquiBrazil may audit and monitor cashback conversions to prevent fraudulent or abusive practices. 6.2. If fraud or misuse is identified, AquiBrazil may block conversions, suspend or close accounts and adopt appropriate legal measures. \n\n7. Expiration and Validity of Points \n\n7.1. Converted points will be subject to the expiration and validity rules established by the Azul Fidelidade program. 7.2. The management of points after conversion is the sole responsibility of the user, who must follow the terms and conditions of the Azul Fidelidade program. \n\n8. Support and Contact \n\n8.1. AquiBrazil will provide support exclusively for questions and problems related to the conversion process. 8.2. Questions about redemption, use or availability of points must be addressed directly with Azul Fidelidade. \n\n9. Exceptions and Omissions \n\n9.1. Situations not provided for in these Terms will be assessed by AquiBrazil in accordance with its internal policies and current legislation. \n\n10. Final Provisions \n\n10.1. These Terms are governed by the laws of the United States of America, specifically the state of Florida. 10.2. In the event of disputes, the jurisdiction of the city of Miami, Florida is elected, waiving any other. 10.3. Continued use of the platform implies full and continuous acceptance of these Terms and Conditions, reaffirming the user\'s commitment to the rules established herein. \n\nBy requesting the conversion of cashback to Azul Fidelidade points, the user expressly agrees to all the terms above.',
      'es':
          '1. Disposiciones generales\n\n1.1. Estos Términos y Condiciones establecen las reglas para la conversión del reembolso acumulado.\nen la plataforma AquiBrasil en puntos del programa Azul Fidelidade.\n1.2. Al solicitar el cambio de cashback por puntos, el usuario declara conocer y estar de acuerdo con\nestos Términos y Condiciones.\n1.3. AquiBrazil se reserva el derecho de modificar, suspender o finalizar el programa de conversión.\nreembolso en puntos Azul Fidelidade, en cualquier momento, con previo aviso razonable. Y\nEs responsabilidad del usuario consultar periódicamente estos Términos y Condiciones para verificar\nactualizaciones.\n\n2. Requisitos de acumulación y canje\n\n2.1. El cashback acumulado se puede convertir en puntos Azul Fidelidade siempre que tengas\nalcanzó el valor mínimo de US\$10,00 (diez dólares estadounidenses).\n2.2. La conversión se realizará a razón de US\$ 10,00 por 1.000 (mil) puntos Azul Fidelidade.\n2.3. La solicitud de conversión de cashback a puntos Azul Fidelidade es irreversible y no se puede\ncancelado o reembolsado después de la solicitud.\n2.4. Solo se puede convertir el reembolso liberado y disponible en la cuenta del usuario, no\npermitido convertir importes pendientes o en proceso.\n\n3. Vinculación y transferencia de puntos\n\n3.1. Los puntos se vincularán y transferirán exclusivamente a la cuenta Azul Fidelidade\ncorrespondiente al CPF proporcionado por el cliente. Es responsabilidad exclusiva del cliente proporcionar\nIntroduzca correctamente todos los datos necesarios para transferir puntos.\n3.2. AquiBrazil no se responsabiliza por errores en el suministro de información, incluyendo\nenvío a un CPF incorrecto o diferente del titular de la cuenta Azul Fidelidade.\n3.3. Si el cliente no tiene una cuenta activa Azul Fidelidade, los puntos permanecerán\nvinculado al CPF proporcionado hasta la apertura de la cuenta. Creación y mantenimiento de la cuenta Azul\nLa fidelidad es responsabilidad exclusiva del usuario.\n\n4. Disponibilidad de puntos\n\n4.1. Los puntos convertidos estarán disponibles en la cuenta Azul Fidelidade en un plazo de 72 horas hábiles a partir de la fecha de conversión.\nConfirmación del intercambio.\n4.2. La disponibilidad de puntos puede retrasarse por razones técnicas u operativas de Azul.\nFidelity, AquiBrazil no es responsable por la continuidad o mantenimiento\nlas reglas del programa antes mencionado. En caso de problemas con la acreditación de puntos, el usuario deberá\nContacte directamente con Azul Fidelidade.\n\n5. Limitación de responsabilidad\n\n5.1. AquiBrazil actúa exclusivamente como intermediario en la conversión de cashback en puntos\nAzul Fidelidade y no será responsable por fallas, retrasos o incidencias ocurridas después de la\ntransferencia de puntos.\n5.2. AquiBrazil no se responsabiliza por restricciones, bloqueos, cancelaciones o vencimientos de\npuntos ya acreditados en la cuenta Azul Fidelidade del usuario.\n5.3. En ningún caso AquiBrazil será responsable por daños directos o indirectos, ganancias\npérdidas o perjuicios derivados de la conversión de cashback en puntos Azul Fidelidade.\n5.4. El usuario se compromete a indemnizar y eximir a AquiBrazil de cualquier responsabilidad.\nderivados de disputas relacionadas con la conversión de cashback a puntos Azul Fidelidade.\n\n6. Prevención del fraude y el uso indebido\n\n6.1. AquiBrazil puede auditar y monitorear las conversiones de reembolso para prevenir prácticas fraudulentas.\nfraudulento o abusivo.\n6.2. Si se identifica fraude o mal uso, AquiBrazil puede bloquear las conversiones,\nsuspender o cancelar cuentas y tomar las medidas legales apropiadas.\n\n7. Caducidad y validez de los puntos\n\n7.1. Los puntos convertidos estarán sujetos a las reglas de vencimiento y validez establecidas por\nPrograma de fidelización azul.\n7.2. La gestión de los puntos tras la conversión es responsabilidad exclusiva del usuario, quien deberá\nmonitorear las condiciones del programa Azul Fidelidade.\n\n8. Soporte y contacto\n\n8.1. AquiBrazil brindará soporte exclusivamente para preguntas y problemas relacionados con\nproceso de conversión.\n8.2. Las preguntas sobre canje, uso o disponibilidad de puntos deben dirigirse directamente\ncon Azul Fidelidade.\n\n9. Excepciones y omisiones\n\n9.1. Las situaciones no previstas en estos Términos serán evaluadas por AquiBrazil de acuerdo con sus\npolíticas internas y legislación vigente.\n\n10. Disposiciones finales\n\n10.1. Estos Términos se rigen por las leyes de los Estados Unidos de América, específicamente las\nestado de Florida.\n10.2. En caso de controversias, se elige el foro de la ciudad de Miami, Florida, renunciando a cualquier fuero.\ncualquier otro.\n10.3. El uso continuado de la plataforma implica la aceptación plena y continua de estos Términos y\nCondiciones, reafirmando el compromiso del usuario con las normas aquí establecidas.\n\nAl solicitar la conversión de cashback a puntos Azul Fidelidade, el usuario acepta\nexpresamente con todos los términos anteriores.',
    },
    '9t2t0vyo': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // rentalAutomotiveSchedule
  {
    'vt16xzlc': {
      'pt': '(6)',
      'en': '(6)',
      'es': '(6)',
    },
    'xi1govlf': {
      'pt': 'OU SEMELHANTE • SEDAN',
      'en': 'OR SIMILAR • SEDAN',
      'es': 'O SIMILAR • SEDÁN',
    },
    'skima64x': {
      'pt': ' POR DIA',
      'en': 'PER DAY',
      'es': 'POR DÍA',
    },
    'lp8prpn8': {
      'pt': 'NO CLUBE VOCÊ ECONOMIZA',
      'en': 'AT THE CLUB YOU SAVE',
      'es': 'EN EL CLUB AHORRAS',
    },
    'ebc0qtut': {
      'pt': ' \$',
      'en': '\$',
      'es': '\$',
    },
    'i8hg7q6q': {
      'pt': '4.99',
      'en': '4.99',
      'es': '4,99',
    },
    '8v9rascb': {
      'pt': ' PESSOAS',
      'en': 'PEOPLE',
      'es': 'GENTE',
    },
    'ff04vuks': {
      'pt': '5 PESSOAS',
      'en': '5 PEOPLE',
      'es': '5 PERSONAS',
    },
    'bekc4g3p': {
      'pt': ' MALAS PEQUENAS',
      'en': 'SMALL SUITCASES',
      'es': 'MALETAS PEQUEÑAS',
    },
    'etdl41i4': {
      'pt': '2 MALAS PEQUENAS',
      'en': '2 SMALL SUITCASES',
      'es': '2 MALETAS PEQUEÑAS',
    },
    'vm28e7qh': {
      'pt': ' PORTAS',
      'en': 'DOORS',
      'es': 'PUERTAS',
    },
    'qid5w3xs': {
      'pt': '4 PORTA',
      'en': '4 DOOR',
      'es': '4 PUERTAS',
    },
    'gj7uqliq': {
      'pt': ' MALAS GRANDES',
      'en': 'LARGE SUITCASES',
      'es': 'MALETAS GRANDES',
    },
    '7z93r2pu': {
      'pt': '1 MALA GRANDE',
      'en': '1 LARGE SUITCASE',
      'es': '1 MALETA GRANDE',
    },
    '3nyzu1rn': {
      'pt': 'IDADE MÍNIMA: ',
      'en': 'MINIMUM AGE:',
      'es': 'EDAD MÍNIMA:',
    },
    '5kto4ezy': {
      'pt': 'IDADE MÍNIMA: 21',
      'en': 'MINIMUM AGE: 21',
      'es': 'EDAD MÍNIMA: 21',
    },
    '43zkzto3': {
      'pt': 'PAGAR E RESERVAR',
      'en': 'PAY AND BOOK',
      'es': 'PAGAR Y RESERVAR',
    },
    'hj5yh2af': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // membershipTerms
  {
    '0fazuu19': {
      'pt': 'AQUIPASS - TERMOS DE USO',
      'en': 'AQUIPASS - TERMS OF USE',
      'es': 'AQUIPASS - CONDICIONES DE USO',
    },
    'scwq23h0': {
      'pt': 'TERMOS DE USO DO AQUIPASS',
      'en': 'AQUIPASS TERMS OF USE',
      'es': 'CONDICIONES DE USO DE AQUIPASS',
    },
    'x1frxq8g': {
      'pt': '1. Aceitação dos Termos',
      'en': '1. Acceptance of Terms',
      'es': '1. Aceptación de los términos',
    },
    'iofwl8z8': {
      'pt':
          'Ao se inscrever no AquiPass, você declara que leu, entendeu e concorda plenamente com estes Termos de Uso, bem como com a Política de Privacidade associada ao serviço. Estes termos regem a relação entre o usuário e a AquiBrazil em relação ao uso do AquiPass. Caso não concorde com qualquer disposição destes termos, recomendamos que não prossiga com a inscrição ou utilização do serviço.\n\nA utilização do AquiPass está condicionada ao cumprimento integral destes Termos de Uso. É responsabilidade do usuário revisar periodicamente os termos para estar ciente de possíveis alterações. A continuidade no uso do serviço após a publicação de mudanças será considerada como aceitação das mesmas. Se você tiver dúvidas sobre qualquer cláusula destes Termos, entre em contato pelo e-mail suporte@aquibrazil.com antes de prosseguir.\nAo se inscrever no AquiPass, você concorda em estar vinculado a estes Termos de Uso. Caso não concorde com qualquer parte destes termos, você não deve utilizar o serviço AquiPass.',
      'en':
          'By registering with AquiPass, you declare that you have read, understood and fully agree to these Terms of Use, as well as the Privacy Policy associated with the service. These terms govern the relationship between the user and AquiBrazil in relation to the use of AquiPass. If you do not agree with any provision of these terms, we recommend that you do not proceed with the registration or use of the service. \n\nThe use of AquiPass is subject to full compliance with these Terms of Use. It is the user\'s responsibility to periodically review the terms to be aware of possible changes. Continued use of the service after the publication of changes will be considered acceptance of them. If you have questions about any provision of these Terms, please contact us by email at suporte@aquibrazil.com before proceeding. \n\nBy registering with AquiPass, you agree to be bound by these Terms of Use. If you do not agree with any part of these terms, you should not use the AquiPass service.',
      'es':
          'Al registrarse en AquiPass, usted declara que ha leído, comprendido y acepta completamente estos Términos de Uso, así como la Política de Privacidad asociada al servicio. Estos términos rigen la relación entre el usuario y AquiBrazil en relación al uso de AquiPass. Si no está de acuerdo con alguna disposición de estos términos, le recomendamos que no continúe con el registro o el uso del servicio.\n\nEl uso de AquiPass está sujeto al pleno cumplimiento de estos Términos de Uso. Es responsabilidad del usuario revisar periódicamente los términos para estar al tanto de posibles cambios. El uso continuado del servicio después de que se publiquen los cambios se considerará como aceptación de dichos cambios. Si tiene preguntas sobre alguna disposición de estos Términos, comuníquese con nosotros a suporte@aquibrazil.com antes de continuar.\nAl registrarse en AquiPass, usted acepta estar sujeto a estos Términos de uso. Si no está de acuerdo con alguna parte de estos términos, no debe utilizar el servicio AquiPass.',
    },
    '1gexyvli': {
      'pt': '2.  O que é o AquiPass',
      'en': '2. What is AquiPass?',
      'es': '2. ¿Qué es AquiPass?',
    },
    'q0738gzh': {
      'pt':
          'AquiPass é um clube de benefícios exclusivo oferecido pela plataforma AquiBrazil. Ele foi criado para proporcionar vantagens e economia aos seus membros por meio de uma rede de parceiros e funcionalidades únicas. Com o AquiPass, os usuários podem aproveitar:\n- Descontos Exclusivos: Até 50% de desconto em uma ampla variedade de produtos e serviços, incluindo opções de lazer, gastronomia, saúde, beleza e mais.\n- Cashback Garantido: 3% de cashback em todas as compras realizadas pelos parceiros participantes, que é creditado diretamente na carteira digital do usuário dentro do app AquiBrazil.\n- Acesso Sem Anúncios: Experiência livre de anúncios no aplicativo AquiBrazil, garantindo navegação mais rápida e focada.\n- Parcerias Exclusivas: Benefícios especiais em redes americanas renomadas que oferecem promoções e descontos personalizados.\nO AquiPass é mais do que um programa de descontos; é um sistema de recompensas projetado para maximizar o valor que os membros podem obter em suas atividades diárias.\n',
      'en':
          'AquiPass is an exclusive benefits club offered by the AquiBrazil platform. It was created to provide advantages and savings to its members through a network of partners and unique features. With AquiPass, users can enjoy: \n- Exclusive Discounts: Up to 50% off on a wide variety of products and services, including leisure, gastronomy, health, beauty and more. \n- Guaranteed Cashback: 3% cashback on all purchases made by participating partners, which is credited directly to the user\'s digital wallet within the AquiBrazil app. \n- Ad-Free Access: Ad-free experience on the AquiBrazil app, ensuring faster and more focused browsing. \n- Exclusive Partnerships: Special benefits at renowned American chains that offer personalized promotions and discounts. \nAquiPass is more than a discount program; it is a rewards system designed to maximize the value that members can obtain in their daily activities.',
      'es':
          'AquiPass es un club de beneficios exclusivos ofrecido por la plataforma AquiBrazil. Fue creado para brindar beneficios y ahorros a sus miembros a través de una red de socios y características únicas. Con AquiPass, los usuarios pueden disfrutar de:\n- Descuentos Exclusivos: Hasta un 50% de descuento en una amplia variedad de productos y servicios, incluyendo ocio, gastronomía, salud, belleza y más.\n- Cashback Garantizado: 3% de cashback en todas las compras realizadas por los socios participantes, que se acredita directamente en la billetera digital del usuario dentro de la aplicación AquiBrazil.\n- Acceso sin publicidad: Experiencia sin publicidad en la aplicación AquiBrazil, lo que garantiza una navegación más rápida y enfocada.\n- Alianzas Exclusivas: Beneficios especiales en reconocidas cadenas americanas que ofrecen promociones y descuentos personalizados.\nAquiPass es más que un programa de descuentos; Es un sistema de recompensas diseñado para maximizar el valor que los miembros pueden obtener de sus actividades diarias.',
    },
    'n2b5f65i': {
      'pt': '3.  Planos Disponíveis',
      'en': '3. Available Plans',
      'es': '3. Planes disponibles',
    },
    'io6k2vd2': {
      'pt':
          'O AquiPass foi pensado para atender diferentes perfis de usuários, oferecendo três tipos de planos que garantem flexibilidade e benefícios exclusivos. Confira os detalhes de cada plano abaixo:\n\n3.1 Plano Mensal Recorrente\n- Descrição: Este plano oferece aos membros acesso total aos benefícios do AquiPass por 30 dias, com renovação automática ao final do período.\n- Duração: 30 dias.\n- Renovação: Automática, garantindo continuidade sem interrupção nos benefícios.\n- Pagamento: Cobrança realizada diretamente no cartão de crédito ou débito cadastrado.\n- Indicado para: Usuários que desejam testar o serviço ou preferem flexibilidade mensal.\n\n3.2 Plano Anual Recorrente\n- Descrição: Ideal para quem busca economizar a longo prazo, este plano oferece um desconto significativo em relação ao plano mensal, com acesso aos benefícios por 12 meses consecutivos.\n- Duração: 12 meses.\n- Renovação: Automática ao final do período, garantindo o aproveitamento ininterrupto das vantagens do AquiPass.\n- Pagamento: Cobrança única anual realizada no cartão de crédito ou débito cadastrado.\n- Indicado para: Usuários que desejam maximizar benefícios com economia em relação ao pagamento mensal.\n\n3.3 Plano Mensal sem Renovação\n- Descrição: Este plano permite acesso aos benefícios do AquiPass por 30 dias, sem renovação automática, ideal para quem prefere gestão manual de sua assinatura.\n- Duração: 30 dias.\n- Renovação: Não aplicável; o plano expira automaticamente após o período contratado.\n- Pagamento: Cobrança única realizada no cartão de crédito ou débito cadastrado.\n- Indicado para: Usuários que precisam de benefícios por um período curto ou ocasional.\n',
      'en':
          'AquiPass was designed to meet the needs of different user profiles, offering three types of plans that guarantee flexibility and exclusive benefits. Check out the details of each plan below: \n\n3.1 Monthly Recurring Plan \n- Description: This plan offers members full access to AquiPass benefits for 30 days, with automatic renewal at the end of the period. \n- Duration: 30 days. \n- Renewal: Automatic, ensuring continuity without interruption in benefits. \n- Payment: Charged directly to the registered credit or debit card. \n- Recommended for: Users who want to test the service or prefer monthly flexibility. \n\n3.2 Annual Recurring Plan \n- Description: Ideal for those looking to save money in the long term, this plan offers a significant discount compared to the monthly plan, with access to benefits for 12 consecutive months. \n- Duration: 12 months. \n- Renewal: Automatic at the end of the period, ensuring uninterrupted use of AquiPass advantages. \n\n- Payment: Single annual charge made to the registered credit or debit card.\n- Recommended for: Users who wish to maximize benefits while saving money compared to monthly payments.\n\n3.3 Monthly Plan without Renewal\n- Description: This plan allows access to AquiPass benefits for 30 days, without automatic renewal, ideal for those who prefer to manually manage their subscription.\n- Duration: 30 days.\n- Renewal: Not applicable; the plan expires automatically after the contracted period.\n- Payment: Single charge made to the registered credit or debit card.\n- Recommended for: Users who need benefits for a short or occasional period.',
      'es':
          'AquiPass fue diseñado para atender diferentes perfiles de usuarios, ofreciendo tres tipos de planes que garantizan flexibilidad y beneficios exclusivos. Consulta los detalles de cada plan a continuación:\n\n3.1 Plan recurrente mensual\n- Descripción: Este plan ofrece a los miembros acceso completo a los beneficios de AquiPass durante 30 días, con renovación automática al final del período.\n- Duración: 30 días.\n- Renovación: Automática, garantizando la continuidad sin interrupción de los beneficios.\n- Pago: Cargo directo a la tarjeta de crédito o débito registrada.\n- Recomendado para: Usuarios que quieran probar el servicio o prefieran flexibilidad mensual.\n\n3.2 Plan Anual Recurrente\n- Descripción: Ideal para quienes buscan ahorrar a largo plazo, este plan ofrece un importante descuento respecto al plan mensual, con acceso a beneficios durante 12 meses consecutivos.\n- Duración: 12 meses.\n- Renovación: Automática al final del periodo, garantizando el uso ininterrumpido de los beneficios de AquiPass.\n- Pago: Cargo único anual realizado a la tarjeta de crédito o débito registrada.\n- Recomendado para: Usuarios que quieran maximizar beneficios mientras ahorran dinero en los pagos mensuales.\n\n3.3 Plan mensual sin renovación\n- Descripción: Este plan permite acceder a los beneficios de AquiPass durante 30 días, sin renovación automática, ideal para quienes prefieren la gestión manual de su suscripción.\n- Duración: 30 días.\n- Renovación: No aplica; El plan expira automáticamente después del período contratado.\n- Pago: Cargo único realizado en la tarjeta de crédito o débito registrada.\n- Recomendado para: Usuarios que necesitan beneficios por un periodo corto u ocasional.',
    },
    'fvpzvf1n': {
      'pt': '4.  Adesão ao AquiPass',
      'en': '4. Joining AquiPass',
      'es': '4. Cómo unirse a AquiPass',
    },
    'xgkb8535': {
      'pt':
          'A adesão ao AquiPass é um processo simples e rápido, projetado para garantir que os usuários possam acessar os benefícios exclusivos de forma imediata. Para aderir ao AquiPass, siga as etapas detalhadas abaixo:\n\n1. Acesse seu perfil: Entre no aplicativo AquiBrazil utilizando suas credenciais de acesso (e-mail e senha).\n2. Selecione o Clube AquiPass: No menu principal, localize a opção “Clube AquiPass” e clique para acessar as opções de planos.\n3. Escolha o plano desejado: Analise os três tipos de planos disponíveis (Mensal Recorrente, Anual Recorrente e Mensal sem Renovação) e selecione aquele que melhor atende às suas necessidades.\n4. Realize o pagamento: Insira as informações do seu cartão de crédito ou débito para concluir o pagamento. O processo é seguro e as informações são protegidas conforme a Política de Privacidade.\n5. Confirmação de adesão: Após a confirmação do pagamento, você receberá um e-mail de boas-vindas ao AquiPass com detalhes sobre o plano escolhido e instruções para acessar os benefícios.\nA adesão não pode ser feita utilizando cashback. Isso significa que, embora você acumule valores em cashback ao utilizar os serviços do AquiPass e da plataforma AquiBrazil, esses valores não podem ser usados como forma de pagamento para os planos de assinatura do AquiPass. A adesão é restrita ao pagamento via cartões de crédito ou débito cadastrados, garantindo a segurança e simplicidade no processo de adesão.\n',
      'en':
          'Joining AquiPass is a simple and quick process, designed to ensure that users can access exclusive benefits immediately. To join AquiPass, follow the steps detailed below: \n\n1. Access your profile: Log in to the AquiBrazil app using your access credentials (email and password). \n\n2. Select the AquiPass Club: In the main menu, find the “AquiPass Club” option and click to access the plan options. \n\n3. Choose the desired plan: Review the three types of plans available (Monthly Recurring, Annual Recurring and Monthly without Renewal) and select the one that best suits your needs. \n\n4. Make the payment: Enter your credit or debit card information to complete the payment. The process is secure and the information is protected in accordance with the Privacy Policy. \n\n5. Confirmation of membership: After payment confirmation, you will receive a welcome email to AquiPass with details about the chosen plan and instructions for accessing the benefits. \n\nMembership cannot be made using cashback. This means that, although you accumulate cashback amounts when using AquiPass services and the AquiBrazil platform, these amounts cannot be used as a form of payment for AquiPass subscription plans. Membership is restricted to payment via registered credit or debit cards, ensuring security and simplicity in the membership process.',
      'es':
          'Unirse a AquiPass es un proceso simple y rápido, diseñado para garantizar que los usuarios puedan acceder a beneficios exclusivos de inmediato. Para unirse a AquiPass, siga los pasos que se detallan a continuación:\n\n1. Accede a tu perfil: Inicia sesión en la aplicación AquiBrazil utilizando tus credenciales de acceso (correo electrónico y contraseña).\n2. Seleccione Clube AquiPass: En el menú principal, busque la opción “Clube AquiPass” y haga clic para acceder a las opciones del plan.\n3. Elige el plan deseado: Analiza los tres tipos de planes disponibles (Mensual Recurrente, Anual Recurrente y Mensual sin Renovación) y selecciona el que mejor se adapte a tus necesidades.\n4. Realizar el pago: Ingrese la información de su tarjeta de crédito o débito para completar el pago. El proceso es seguro y la información está protegida de acuerdo con la Política de Privacidad.\n5. Confirmación de membresía: Luego de la confirmación del pago, recibirás un correo electrónico de bienvenida a AquiPass con detalles sobre el plan elegido e instrucciones para acceder a los beneficios.\nLa membresía no se puede realizar mediante reembolso. Esto significa que, aunque usted acumula montos de reembolso al utilizar los servicios de AquiPass y la plataforma AquiBrazil, estos montos no se pueden utilizar como forma de pago para los planes de suscripción de AquiPass. La membresía está restringida al pago mediante tarjetas de crédito o débito registradas, garantizando seguridad y sencillez en el proceso de membresía.',
    },
    'gtdy7x32': {
      'pt': '5.  Uso dos Benefícios',
      'en': '5. Use of Benefits',
      'es': '5. Uso de los beneficios',
    },
    'yc7v6t6p': {
      'pt':
          'Ao aderir ao AquiPass, os usuários têm acesso a uma ampla gama de benefícios projetados para maximizar sua experiência. Esses benefícios podem ser utilizados tanto dentro do aplicativo AquiBrazil quanto em empresas parceiras externas que fazem parte da rede de parceiros do AquiPass. Veja os detalhes completos:\n5.1 Benefícios Acessíveis pelo App AquiBrazil:\n- Links e Códigos Promocionais: Através do aplicativo, o usuário pode acessar links exclusivos ou códigos promocionais fornecidos pelos parceiros, garantindo descontos especiais.\n- Códigos de Barras para Descontos: Muitos parceiros oferecem descontos através de códigos de barras que podem ser escaneados no ponto de venda.\n- Cashback em Compras: Todas as compras feitas com parceiros qualificados geram cashback de 3% diretamente na carteira digital do usuário.\n\n5.2 Benefícios Fora do App:\n- Parcerias com Empresas Externas: O AquiPass oferece benefícios exclusivos em empresas parceiras que não estão diretamente integradas ao aplicativo, permitindo que os usuários aproveitem descontos e vantagens ao apresentar seu status de membro.\n- Promoções em Redes Americanas: Parceiros renomados nos Estados Unidos garantem condições especiais, como promoções exclusivas para membros do AquiPass.\n\n5.3 Regras para Uso dos Benefícios:\n1. Validade e Limitações: Cada benefício possui termos e condições específicos, que devem ser conferidos no momento de sua utilização.\n2. Uso Pessoal: Os benefícios são exclusivamente para uso pessoal e não podem ser transferidos ou revendidos.\n3. Instruções Específicas: Certifique-se de seguir as instruções fornecidas pelos parceiros (como apresentação de códigos ou identificação de membro) para garantir o acesso aos descontos e promoções.\n\nO AquiPass trabalha constantemente para expandir sua rede de parceiros e oferecer mais vantagens aos membros, tanto no aplicativo quanto em locais externos. O objetivo é garantir que os usuários tenham acesso a uma experiência completa e recompensadora.\nApós aderir ao AquiPass, o usuário terá acesso a:\n- Páginas exclusivas de parceiros que contêm links, códigos promocionais ou códigos de barras para aplicação dos descontos.\n- Benefícios detalhados em cada parceiro conforme disponibilidade.\n',
      'en':
          'By joining AquiPass, users have access to a wide range of benefits designed to maximize their experience. These benefits can be used both within the AquiBrazil app and at external partner companies that are part of the AquiPass partner network. See the full details: \n5.1 Benefits Accessible through the AquiBrazil App: \n- Links and Promotional Codes: Through the app, the user can access exclusive links or promotional codes provided by partners, guaranteeing special discounts. \n- Barcodes for Discounts: Many partners offer discounts through barcodes that can be scanned at the point of sale. \n- Cashback on Purchases: All purchases made with qualified partners generate 3% cashback directly in the user\'s digital wallet. \n\n5.2 Benefits Outside the App: \n- Partnerships with External Companies: AquiPass offers exclusive benefits at partner companies that are not directly integrated with the app, allowing users to enjoy discounts and advantages by presenting their member status. \n- Promotions in American Networks: Renowned partners in the United States guarantee special conditions, such as exclusive promotions for AquiPass members. \n\n5.3 Rules for Using Benefits: \n\n1. Validity and Limitations: Each benefit has specific terms and conditions, which must be checked at the time of use. \n\n2. Personal Use: Benefits are exclusively for personal use and cannot be transferred or resold. \n\n3. Specific Instructions: Make sure to follow the instructions provided by partners (such as presenting codes or member identification) to ensure access to discounts and promotions. \n\nAquiPass is constantly working to expand its partner network and offer more benefits to members, both in the app and in external locations. The goal is to ensure that users have access to a complete and rewarding experience. \n\nAfter joining AquiPass, the user will have access to: \n\n- Exclusive partner pages that contain links, promotional codes or barcodes for applying discounts. \n\n- Benefits detailed for each partner subject to availability.',
      'es':
          'Al unirse a AquiPass, los usuarios tienen acceso a una amplia gama de beneficios diseñados para maximizar su experiencia. Estos beneficios se pueden utilizar tanto dentro de la aplicación AquiBrazil como con empresas asociadas externas que forman parte de la red de socios de AquiPass. Ver detalles completos:\n5.1 Beneficios accesibles a través de la aplicación AquiBrazil:\n- Enlaces y Códigos Promocionales: A través de la aplicación, el usuario podrá acceder a enlaces exclusivos o códigos promocionales proporcionados por socios, garantizando descuentos especiales.\n- Códigos de barras para descuentos: Muchos socios ofrecen descuentos a través de códigos de barras que se pueden escanear en el punto de venta.\n- Cashback en compras: Todas las compras realizadas con socios calificados generan un 3% de cashback directamente en la billetera digital del usuario.\n\n5.2 Beneficios fuera de la aplicación:\n- Alianzas con Empresas Externas: AquiPass ofrece beneficios exclusivos en empresas asociadas que no están directamente integradas en la aplicación, permitiendo a los usuarios disfrutar de descuentos y ventajas presentando su condición de miembro.\n- Promociones en Redes Americanas: Socios de renombre en Estados Unidos garantizan condiciones especiales, como promociones exclusivas para miembros de AquiPass.\n\n5.3 Reglas para el uso de los beneficios:\n1. Validez y Limitaciones: Cada beneficio tiene términos y condiciones específicos, los cuales deberán ser consultados al momento de su uso.\n2. Uso personal: Los beneficios son sólo para uso personal y no se pueden transferir ni revender.\n3. Instrucciones específicas: Asegúrese de seguir las instrucciones proporcionadas por los socios (como presentar códigos o identificación de miembro) para garantizar el acceso a descuentos y promociones.\n\nAquiPass trabaja constantemente para expandir su red de socios y ofrecer más beneficios a los miembros, tanto en la aplicación como en ubicaciones externas. El objetivo es garantizar que los usuarios tengan acceso a una experiencia completa y gratificante.\nDespués de unirse a AquiPass, el usuario tendrá acceso a:\n- Páginas exclusivas de socios que contienen enlaces, códigos promocionales o códigos de barras para aplicar descuentos.\n- Beneficios detallados para cada socio sujetos a disponibilidad.',
    },
    '8capy029': {
      'pt': '6.  Cashback',
      'en': '6. Cashback',
      'es': '6. Reembolso',
    },
    'hhwugght': {
      'pt':
          'O cashback é uma das vantagens exclusivas do AquiPass, projetado para oferecer ainda mais economia aos membros. Veja abaixo os detalhes sobre como ele funciona:\n\n6.1 Como Funciona o Cashback:\n- Acúmulo Automático: Após a confirmação de compras realizadas com parceiros qualificados do AquiPass, 3% do valor da transação será creditado automaticamente na carteira digital do usuário dentro do aplicativo AquiBrazil.\n- Rastreamento de Cashback: Os usuários podem visualizar o saldo acumulado e o histórico de cashback diretamente na seção “Carteira” do aplicativo.\n\n6.2 Condições de Uso do Cashback:\n1. Aplicação Restrita: O cashback acumulado só pode ser utilizado dentro do aplicativo AquiBrazil para serviços ou funcionalidades específicas, conforme indicado nas condições de uso da plataforma.\n2. Cancelamentos e Estornos: Caso uma compra qualificada para cashback seja cancelada ou devolvida, o valor correspondente ao cashback acumulado será automaticamente estornado da carteira digital.\n3. Validade: O saldo de cashback não expira, permitindo que os usuários o utilizem quando desejarem, dentro das condições especificadas.\n\n6.3 Benefícios Adicionais:\n- Economia Acumulativa: Quanto mais o usuário utiliza os serviços e benefícios do AquiPass, maior será o saldo de cashback disponível para futuras transações.\n- Transparência Total: Todas as transações e valores acumulados são exibidos de forma clara e detalhada no aplicativo, promovendo total controle e transparência ao usuário.\nO cashback é uma ferramenta poderosa que incentiva o uso contínuo dos benefícios do AquiPass, ao mesmo tempo que recompensa os membros pela sua fidelidade e engajamento.\n- O cashback é creditado automaticamente na carteira do usuário após a confirmação da compra.\n- Caso a compra seja cancelada, o cashback correspondente será estornado.\n',
      'en':
          'Cashback is one of the exclusive benefits of AquiPass, designed to offer even more savings to members. See below for details on how it works: \n\n6.1 How Cashback Works: \n- Automatic Accumulation: After confirming purchases made with qualified AquiPass partners, 3% of the transaction value will be automatically credited to the user\'s digital wallet within the AquiBrazil app. \n- Cashback Tracking: Users can view their accumulated balance and cashback history directly in the “Wallet” section of the app. \n\n6.2 Cashback Terms of Use: \n\n1. Restricted Application: The accumulated cashback can only be used within the AquiBrazil app for specific services or features, as indicated in the platform\'s terms of use. \n\n2. Cancellations and Refunds: If a purchase eligible for cashback is canceled or returned, the amount corresponding to the accumulated cashback will be automatically refunded to the digital wallet. 3. Validity: The cashback balance does not expire, allowing users to use it whenever they wish, within the specified conditions. \n\n6.3 Additional Benefits: \n- Accumulative Savings: The more the user uses AquiPass services and benefits, the greater the cashback balance available for future transactions. \n- Total Transparency: All transactions and accumulated amounts are displayed clearly and in detail in the application, promoting total control and transparency for the user. \nCashback is a powerful tool that encourages the continued use of AquiPass benefits, while rewarding members for their loyalty and engagement. \n- Cashback is automatically credited to the user\'s wallet after purchase confirmation. \n- If the purchase is canceled, the corresponding cashback will be refunded.',
      'es':
          'El reembolso es uno de los beneficios exclusivos de AquiPass, diseñado para ofrecer aún más ahorros a los miembros. Vea a continuación los detalles sobre cómo funciona:\n\n6.1 Cómo funciona el reembolso:\n- Acumulación Automática: Después de confirmar las compras realizadas con socios calificados de AquiPass, el 3% del valor de la transacción se acreditará automáticamente en la billetera digital del usuario dentro de la aplicación AquiBrazil.\n- Seguimiento de reembolsos: los usuarios pueden ver su saldo acumulado y el historial de reembolsos directamente desde la sección “Billetera” de la aplicación.\n\n6.2 Condiciones de uso del reembolso:\n1. Aplicación Restringida: El cashback acumulado sólo podrá ser utilizado dentro de la aplicación AquiBrazil para servicios o funcionalidades específicas, conforme se indica en los términos de uso de la plataforma.\n2. Cancelaciones y Reembolsos: Si una compra elegible para cashback es cancelada o devuelta, el monto correspondiente al cashback acumulado será reembolsado automáticamente a la billetera digital.\n3. Validez: El saldo del cashback no caduca, permitiendo al usuario utilizarlo cuando lo desee, dentro de las condiciones especificadas.\n\n6.3 Beneficios adicionales:\n- Ahorros acumulativos: Cuanto más utilice el usuario los servicios y beneficios de AquiPass, mayor será el saldo de reembolso disponible para futuras transacciones.\n- Transparencia Total: Todas las transacciones y montos acumulados se muestran de forma clara y detallada en la aplicación, proporcionando total control y transparencia al usuario.\nEl reembolso es una herramienta poderosa que incentiva el uso continuo de los beneficios de AquiPass, al tiempo que recompensa a los miembros por su lealtad y compromiso.\n- El reembolso se acredita automáticamente en la billetera del usuario después de la confirmación de la compra.\n- Si se cancela la compra, se reembolsará el cashback correspondiente.',
    },
    '0zve7v4u': {
      'pt': '7.  Cancelamento e Política de Reembolsos',
      'en': '7. Cancellation and Refund Policy',
      'es': '7. Política de cancelación y reembolso',
    },
    'sh8jfx7z': {
      'pt':
          'Abaixo estão os detalhes completos sobre as regras de cancelamento e política de reembolsos para garantir transparência e clareza aos usuários do AquiPass:\n\n7.1 Cancelamento\nO cancelamento do AquiPass é projetado para ser simples e transparente, oferecendo flexibilidade para o usuário. Abaixo estão os detalhes completos:\n- Como Cancelar: O cancelamento pode ser solicitado diretamente no aplicativo AquiBrazil. Para isso, acesse a seção de configurações da assinatura, selecione o plano ativo e clique na opção de cancelar. O processo é intuitivo e confirmado imediatamente.\n- Prazo de Validade do Plano: Uma vez solicitado o cancelamento, o plano permanecerá ativo até o final do período contratado (mensal ou anual). Isso significa que você continuará a ter acesso completo aos benefícios até o encerramento do ciclo atual.\n- Renovação Automática: Solicitar o cancelamento desativa a renovação automática, garantindo que não sejam feitas cobranças adicionais ao final do período vigente.\n- Confirmação de Cancelamento: Você receberá um e-mail e/ou notificação no aplicativo confirmando o processamento do cancelamento.\n- Prazos Importantes: Para evitar a renovação automática, o cancelamento deve ser solicitado antes da data de renovação do plano. Cancelamentos feitos após a renovação serão aplicáveis apenas ao próximo ciclo de assinatura.\n- Reativar Plano: Caso decida voltar ao AquiPass, você pode reativar sua assinatura a qualquer momento selecionando um plano no aplicativo.\n\n7.2 Política de Reembolsos\n- Sem Reembolsos Antecipados: Não há reembolsos para cancelamentos feitos antes do término do período contratado. O usuário continuará tendo acesso aos benefícios até o término do ciclo vigente.\n- Exceções: Reembolsos poderão ser considerados em casos excepcionais, como erros de cobrança, mediante análise e aprovação pelo suporte do AquiBrazil. Para solicitar, o usuário deve entrar em contato pelo e-mail suporte@aquibrazil.com.\n- Responsabilidade do Usuário: É responsabilidade do usuário acompanhar o status da assinatura e efetuar o cancelamento antes da renovação automática, caso não deseje continuar com o plano.\n\nCom estas políticas, buscamos oferecer flexibilidade aos usuários e garantir que o processo de cancelamento seja simples e justo para todos.\n',
      'en':
          'Below are the full details on the cancellation rules and refund policy to ensure transparency and clarity for AquiPass users: \n\n7.1 Cancellation \nAquiPass cancellation is designed to be simple and transparent, offering flexibility to the user. Below are the full details: \n- How to Cancel: Cancellation can be requested directly in the AquiBrazil app. To do so, access the subscription settings section, select the active plan and click on the cancel option. The process is intuitive and confirmed immediately. \n- Plan Validity Period: Once cancellation is requested, the plan will remain active until the end of the contracted period (monthly or annual). This means that you will continue to have full access to the benefits until the end of the current cycle. \n- Automatic Renewal: Requesting cancellation disables automatic renewal, ensuring that no additional charges are made at the end of the current period. \n- Cancellation Confirmation: You will receive an email and/or notification in the app confirming that the cancellation has been processed. \n- Important Deadlines: To avoid automatic renewal, cancellation must be requested before the plan renewal date. Cancellations made after renewal will only apply to the next subscription cycle.\n- Reactivate Plan: If you decide to return to AquiPass, you can reactivate your subscription at any time by selecting a plan in the app.\n\n7.2 Refund Policy\n- No Early Refunds: There are no refunds for cancellations made before the end of the contracted period. The user will continue to have access to the benefits until the end of the current cycle.\n- Exceptions: Refunds may be considered in exceptional cases, such as billing errors, subject to analysis and approval by AquiBrazil support. To request a refund, the user must contact suporte@aquibrazil.com.\n- User Responsibility: It is the user\'s responsibility to monitor the subscription status and cancel before automatic renewal if they do not wish to continue with the plan.\n\nWith these policies, we aim to offer flexibility to users and ensure that the cancellation process is simple and fair for everyone.',
      'es':
          'A continuación se presentan los detalles completos sobre las reglas de cancelación y la política de reembolso para garantizar la transparencia y claridad para los usuarios de AquiPass:\n\n7.1 Cancelación\nLa cancelación de AquiPass está diseñada para ser sencilla y transparente, ofreciendo flexibilidad al usuario. A continuación se muestran los detalles completos:\n- Cómo cancelar: La cancelación se puede solicitar directamente en la aplicación AquiBrazil. Para ello, accede al apartado de configuración de la suscripción, selecciona el plan activo y haz clic en la opción cancelar. El proceso es intuitivo y se confirma de inmediato.\n- Periodo de Vigencia del Plan: Una vez solicitada la baja, el plan permanecerá activo hasta la finalización del periodo contratado (mensual o anual). Esto significa que continuará teniendo acceso completo a los beneficios hasta el final del ciclo actual.\n- Renovación Automática: Al solicitar la cancelación se deshabilita la renovación automática, garantizando que no se realicen cargos adicionales al final del período actual.\n- Confirmación de cancelación: Recibirás un correo electrónico y/o una notificación en la aplicación confirmando que tu cancelación ha sido procesada.\n- Fechas límite importantes: Para evitar la renovación automática, la cancelación debe solicitarse antes de la fecha de renovación del plan. Las cancelaciones realizadas después de la renovación se aplicarán únicamente al siguiente ciclo de suscripción.\n- Reactivar Plan: Si decides volver a AquiPass, puedes reactivar tu suscripción en cualquier momento seleccionando un plan en la aplicación.\n\n7.2 Política de reembolso\n- No hay reembolsos anticipados: No hay reembolsos por cancelaciones realizadas antes de finalizar el período contratado. El usuario continuará teniendo acceso a los beneficios hasta la finalización del ciclo actual.\n- Excepciones: Se podrán considerar reembolsos en casos excepcionales, como errores de facturación, sujetos a análisis y aprobación del soporte de AquiBrazil. Para solicitarlo, el usuario deberá contactarnos vía correo electrónico a suporte@aquibrazil.com.\n- Responsabilidad del Usuario: Es responsabilidad del usuario monitorear el estado de la suscripción y cancelarla antes de la renovación automática si no desea continuar con el plan.\n\nCon estas políticas pretendemos ofrecer flexibilidad a los usuarios y garantizar que el proceso de cancelación sea sencillo y justo para todos.',
    },
    'nypja7t6': {
      'pt': '8.  Alterações nos Termos',
      'en': '8. Changes to Terms',
      'es': '8. Cambios en los Términos',
    },
    '375bvmok': {
      'pt':
          'A AquiBrazil reserva-se o direito de atualizar, modificar ou alterar estes Termos de Uso a qualquer momento para refletir mudanças no serviço, requisitos legais ou outras necessidades. As alterações serão comunicadas aos usuários de forma clara e transparente por meio de e-mail cadastrado e/ou notificações no aplicativo AquiBrazil.\n\n8.1 Como as Alterações Serão Informadas:\n1. Notificação Antecipada: Os usuários serão informados com antecedência razoável sobre qualquer mudança significativa nos termos.\n2. Meios de Comunicação: As notificações serão enviadas via e-mail e também poderão ser exibidas no aplicativo AquiBrazil.\n3. Data de Efetivação: A data de início da vigência dos novos termos será claramente indicada na comunicação.\n\n8.2 Aceitação das Alterações:\n- O uso continuado do AquiPass após a data de efetivação das alterações será considerado como aceitação dos novos Termos de Uso.\n- Caso o usuário não concorde com as alterações, ele poderá cancelar sua assinatura antes que as mudanças entrem em vigor, mantendo o acesso até o final do ciclo vigente.\nEste processo garante que todos os usuários estejam cientes de mudanças nos Termos de Uso e tenham a oportunidade de tomar decisões informadas.\nA AquiBrazil reserva-se o direito de alterar os Termos de Uso do AquiPass a qualquer momento. As alterações serão comunicadas via e-mail e/ou pelo aplicativo. O uso continuado do serviço após as alterações constitui aceitação dos novos termos.\n',
      'en':
          'AquiBrazil reserves the right to update, modify or change these Terms of Use at any time to reflect changes in the service, legal requirements or other needs. Changes will be communicated to users in a clear and transparent manner via registered email and/or notifications in the AquiBrazil application. \n\n8.1 How Changes Will Be Notified: \n1. Advance Notification: Users will be informed reasonably in advance of any significant changes to the terms. \n2. Means of Communication: Notifications will be sent via email and may also be displayed in the AquiBrazil application. \n3. Effective Date: The effective date of the new terms will be clearly indicated in the communication. \n\n8.2 Acceptance of Changes:\n- Continued use of AquiPass after the effective date of the changes will be considered as acceptance of the new Terms of Use.\n- If the user does not agree with the changes, he/she may cancel his/her subscription before the changes come into effect, maintaining access until the end of the current cycle.\nThis process ensures that all users are aware of changes to the Terms of Use and have the opportunity to make informed decisions.\nAquiBrazil reserves the right to change the AquiPass Terms of Use at any time. Changes will be communicated via email and/or through the application. Continued use of the service after the changes constitutes acceptance of the new terms.',
      'es':
          'AquiBrazil se reserva el derecho de actualizar, modificar o cambiar estos Términos de Uso en cualquier momento para reflejar cambios en el servicio, requisitos legales u otras necesidades. Los cambios se comunicarán a los usuarios de forma clara y transparente a través del correo electrónico registrado y/o notificaciones en la aplicación AquiBrazil.\n\n8.1 Cómo se notificarán los cambios:\n1. Aviso previo: Los usuarios serán informados con razonable antelación sobre cualquier cambio material en los términos.\n2. Medios de comunicación: Las notificaciones se enviarán vía correo electrónico y también podrán mostrarse en la aplicación AquiBrazil.\n3. Fecha de entrada en vigor: La fecha de entrada en vigor de los nuevos términos se indicará claramente en la comunicación.\n\n8.2 Aceptación de cambios:\n- El uso continuado de AquiPass después de la fecha de vigencia de los cambios se considerará como aceptación de los nuevos Términos de uso.\n- Si el usuario no está de acuerdo con los cambios, podrá cancelar su suscripción antes de que los cambios entren en vigor, manteniendo el acceso hasta el final del ciclo actual.\nEste proceso garantiza que todos los usuarios estén al tanto de los cambios en los Términos de uso y tengan la oportunidad de tomar decisiones informadas.\nAquiBrazil se reserva el derecho de cambiar los Términos de uso de AquiPass en cualquier momento. Los cambios se comunicarán vía correo electrónico y/o mediante la aplicación. El uso continuado del Servicio después de que se realicen los cambios constituye la aceptación de los nuevos términos.',
    },
    '471znqfn': {
      'pt': '9.  Limitação de Responsabilidade',
      'en': '9. Limitation of Liability',
      'es': '9. Limitación de responsabilidad',
    },
    'u6d1cjw4': {
      'pt':
          'A AquiBrazil busca oferecer um serviço confiável e de alta qualidade, mas algumas limitações são necessárias para garantir a clareza e transparência com os usuários. Leia atentamente as condições abaixo:\n\n9.1 Responsabilidade Geral:\n- A AquiBrazil não garante que os serviços e benefícios oferecidos pelo AquiPass estarão sempre disponíveis sem interrupções ou erros. Problemas técnicos podem ocorrer devido a fatores fora de nosso controle.\n- O uso dos benefícios do AquiPass é de inteira responsabilidade do usuário, que deve seguir as instruções fornecidas pelos parceiros e pela plataforma.\n\n9.2 Sobre os Parceiros:\n- A AquiBrazil não se responsabiliza pela qualidade, disponibilidade ou entrega de produtos e serviços oferecidos pelos parceiros do AquiPass.\n- Qualquer problema relacionado à execução de serviços ou aquisição de produtos deve ser tratado diretamente com o parceiro responsável.\n9.3 Códigos Promocionais e Links:\n- A AquiBrazil não se responsabiliza por problemas técnicos na utilização de links ou códigos promocionais fornecidos pelos parceiros.\n- Benefícios dependem das políticas de cada parceiro e podem estar sujeitos a alterações sem aviso prévio.\n\n9.4 Limitação de Garantias:\n- A AquiBrazil não garante que o cashback ou descontos serão aplicados em todas as transações, especialmente se houver erros ou descumprimento dos termos pelos parceiros.\n- O AquiPass é um serviço fornecido \"como está\", e não garantimos resultados específicos ou satisfação garantida para cada usuário.\n\n9.5 Isenção de Responsabilidade:\n- Em nenhuma circunstância a AquiBrazil será responsável por perdas indiretas, incidentais, punitivas ou consequenciais decorrentes do uso ou da incapacidade de usar o AquiPass.\n- Nossa responsabilidade, caso aplicável, limita-se ao valor pago pelo usuário no ciclo vigente do plano contratado.\nEstas limitações visam garantir uma relação justa entre a AquiBrazil, seus parceiros e os usuários, promovendo transparência em todos os aspectos do serviço.\nA AquiBrazil não se responsabiliza por:\n- Problemas técnicos no uso dos códigos promocionais ou links de parceiros.\n- Disponibilidade ou qualidade dos produtos e serviços oferecidos pelos parceiros.\n',
      'en':
          'AquiBrazil seeks to offer a reliable and high-quality service, but some limitations are necessary to ensure clarity and transparency with users. Please read the conditions below carefully: \n\n9.1 General Responsibility: \n- AquiBrazil does not guarantee that the services and benefits offered by AquiPass will always be available without interruptions or errors. Technical problems may occur due to factors beyond our control. \n- The use of AquiPass benefits is the sole responsibility of the user, who must follow the instructions provided by the partners and the platform. \n\n9.2 About Partners: \n- AquiBrazil is not responsible for the quality, availability or delivery of products and services offered by AquiPass partners. \n- Any problem related to the execution of services or purchase of products must be addressed directly with the responsible partner. \n9.3 Promotional Codes and Links: \n- AquiBrazil is not responsible for technical problems in the use of links or promotional codes provided by partners. \n- Benefits depend on the policies of each partner and may be subject to change without prior notice.\n\n9.4 Limitation of Warranties:\n\n- AquiBrazil does not guarantee that cashback or discounts will be applied to all transactions, especially if there are errors or non-compliance with the terms by partners.\n\n- AquiPass is a service provided \"as is\", and we do not guarantee specific results or guaranteed satisfaction for each user.\n\n9.5 Disclaimer:\n\n- Under no circumstances will AquiBrazil be liable for indirect, incidental, punitive or consequential losses arising from the use or inability to use AquiPass.\n\n- Our liability, if applicable, is limited to the amount paid by the user in the current cycle of the contracted plan.\n\nThese limitations aim to ensure a fair relationship between AquiBrazil, its partners and users, promoting transparency in all aspects of the service.\n\nAquiBrazil is not responsible for:\n\n- Technical problems in the use of promotional codes or partner links.\n\n- Availability or quality of products and services offered by partners.',
      'es':
          'AquiBrazil busca ofrecer un servicio confiable y de alta calidad, pero son necesarias algunas limitaciones para garantizar claridad y transparencia con los usuarios. Por favor, lea atentamente las condiciones a continuación:\n\n9.1 Responsabilidad general:\n- AquiBrazil no garantiza que los servicios y beneficios ofrecidos por AquiPass estarán siempre disponibles sin interrupciones o errores. Pueden surgir problemas técnicos debido a factores fuera de nuestro control.\n- El uso de los beneficios de AquiPass es de exclusiva responsabilidad del usuario, quien deberá seguir las instrucciones proporcionadas por los socios y la plataforma.\n\n9.2 Acerca de los Socios:\n- AquiBrazil no es responsable de la calidad, disponibilidad o entrega de los productos y servicios ofrecidos por los socios de AquiPass.\n- Cualquier problema relacionado con la ejecución de servicios o adquisición de productos deberá ser tratado directamente con el socio responsable.\n9.3 Códigos promocionales y enlaces:\n- AquiBrazil no es responsable de problemas técnicos al utilizar enlaces o códigos promocionales proporcionados por los socios.\n- Los beneficios dependen de las políticas de cada socio y pueden estar sujetos a cambios sin previo aviso.\n\n9.4 Limitación de garantías:\n- AquiBrazil no garantiza que se aplicarán reembolsos o descuentos a todas las transacciones, especialmente si hay errores o incumplimiento de los términos por parte de los socios.\n- AquiPass es un servicio proporcionado \"tal cual\" y no garantizamos resultados específicos ni satisfacción garantizada para cada usuario.\n\n9.5 Descargo de responsabilidad:\n- Bajo ninguna circunstancia AquiBrazil será responsable por pérdidas indirectas, incidentales, punitivas o consecuentes que surjan del uso o la imposibilidad de usar AquiPass.\n- Nuestra responsabilidad, en su caso, se limita al importe pagado por el usuario en el ciclo actual del plan contratado.\nEstas limitaciones tienen como objetivo garantizar una relación justa entre AquiBrazil, sus socios y usuarios, promoviendo la transparencia en todos los aspectos del servicio.\nAquiBrazil no es responsable por:\n- Problemas técnicos al utilizar códigos promocionales o enlaces de socios.\n- Disponibilidad o calidad de los productos y servicios ofrecidos por los socios.',
    },
    'vghq8y89': {
      'pt': '10.  Contato',
      'en': '10. Contact',
      'es': '10. Contacto',
    },
    't51f5yov': {
      'pt':
          'Para dúvidas, suporte ou informações adicionais sobre o AquiPass, entre em contato pelo e-mail suporte@aquibrazil.com. Estamos comprometidos em oferecer o melhor suporte para que sua experiência com o AquiPass seja sempre satisfatória.',
      'en':
          'For questions, support or additional information about AquiPass, please contact us at suporte@aquibrazil.com. We are committed to offering the best support so that your experience with AquiPass is always satisfactory.',
      'es':
          'Para preguntas, ayuda o información adicional sobre AquiPass, contáctenos en suporte@aquibrazil.com. Nos comprometemos a ofrecer el mejor soporte para que tu experiencia con AquiPass sea siempre satisfactoria.',
    },
    '7p6ncv6g': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // view_link_tracker
  {
    'lir9qsxh': {
      'pt': 'RASTREIO DO PEDIDO',
      'en': 'TRACKING',
      'es': 'SEGUIMIENTO',
    },
    'e4g0t17w': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // resetPassword-step2
  {
    'lbtc11ti': {
      'pt': 'ENVIAMOS O CÓDIGO PARA SEU UM E-MAIL',
      'en': 'WE SENT THE CODE TO YOUR EMAIL',
      'es': 'TE ENVIAMOS EL CÓDIGO A TU CORREO ELECTRÓNICO',
    },
    'yi1wbkfm': {
      'pt': 'INSIRA O CÓDIGO DE SEGURANÇA QUE ENVIAMOS PARA O SEU E-MAIL.',
      'en': 'ENTER THE SECURITY CODE WE SENT TO YOUR EMAIL.',
      'es':
          'INTRODUCE EL CÓDIGO DE SEGURIDAD QUE TE ENVIAMOS A TU CORREO ELECTRÓNICO.',
    },
    'imxwlcjs': {
      'pt': 'E-mail obrigatório.',
      'en': 'Email required.',
      'es': 'Se requiere correo electrónico.',
    },
    'vib0g636': {
      'pt': 'O e-mail não é válido.',
      'en': 'The email is not valid.',
      'es': 'El correo electrónico no es válido.',
    },
    'w78nz3ra': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'h5eurq4s': {
      'pt': 'PARA REENVIAR O CÓDIGO, AGUARDE',
      'en': 'TO RESEND THE CODE, PLEASE WAIT',
      'es': 'PARA REENVIAR EL CÓDIGO, POR FAVOR ESPERE',
    },
    'gxjkseu9': {
      'pt': 'ENVIAR NOVAMENTE',
      'en': 'SEND AGAIN',
      'es': 'ENVIAR OTRA VEZ',
    },
    'rcdfcpwm': {
      'pt':
          'POR FAVOR, VERIFIQUE SUA CAIXA DE SPAM OU LIXO ELETRÔNICO! NOSSO E-MAIL PODE TER IDO PARA LÁ.',
      'en':
          'PLEASE CHECK YOUR SPAM OR JUNK MAIL FOLDER! OUR EMAIL MAY HAVE GONE THERE.',
      'es':
          '¡POR FAVOR REVISE SU CARPETA DE SPAM O CORREO BASURA! PUEDE QUE NUESTRO CORREO ELECTRÓNICO HAYA LLEGADO ALLÍ.',
    },
    'xlcxd5ny': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // paymentMethod
  {
    '22cd4j53': {
      'pt': 'MÉTODOS DE PAGAMENTO',
      'en': 'PAYMENT METHODS',
      'es': 'MÉTODOS DE PAGO',
    },
    'y3erygi8': {
      'pt': 'ADICIONAR NOVO MÉTODO',
      'en': 'ADD NEW METHOD',
      'es': 'AGREGAR NUEVO MÉTODO',
    },
    'cjr2iod4': {
      'pt': 'VOCÊ NÃO POSSUI MÉTODOS DE PAGAMENTO',
      'en': 'YOU DO NOT HAVE PAYMENT METHODS',
      'es': 'NO TIENES MÉTODOS DE PAGO',
    },
    '4ju9f251': {
      'pt': 'ADICIONE UM MÉTODO DE PAGAMENTO PARA VISUALIZAR NESTA ABA',
      'en': 'ADD A PAYMENT METHOD TO VIEW IN THIS TAB',
      'es': 'AGREGAR UN MÉTODO DE PAGO PARA VER EN ESTA PESTAÑA',
    },
    'y9fj7uyr': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // errorPage
  {
    'm6s954w2': {
      'pt': 'Ops..',
      'en': 'Ops...',
      'es': 'Ops...',
    },
    '5hxcluq6': {
      'pt': 'ALGO INESPERADO ACONTECEU',
      'en': 'SOMETHING UNEXPECTED HAPPENED',
      'es': 'ALGO INESPERADO PASÓ',
    },
    'knoyuwaw': {
      'pt': 'VOLTAR PARA A HOME',
      'en': 'BACK TO HOMEPAGE',
      'es': 'VOLVER A LA PÁGINA DE INICIO',
    },
    'mcsu940s': {
      'pt': 'ACESSAR SUPORTE',
      'en': 'ACCESS SUPPORT',
      'es': 'SOPORTE DE ACCESO',
    },
    'swq3xen7': {
      'pt': 'Home',
      'en': '',
      'es': '',
    },
  },
  // extractCashBack
  {
    'cwfys5na': {
      'pt': 'EXTRATO DE CASHBACK',
      'en': 'CASHBACK STATEMENT',
      'es': 'ESTADO DE CUENTA DE REEMBOLSO',
    },
    'f9jq8i7m': {
      'pt': 'SALDO ATUAL',
      'en': 'CURRENT BALANCE',
      'es': 'SALDO ACTUAL',
    },
    'ajs93m50': {
      'pt': 'HISTÓRICO DE CASHBACK',
      'en': 'CASHBACK HISTORY',
      'es': 'HISTORIAL DE REEMBOLSOS',
    },
    '2n3nlq45': {
      'pt': 'ENTENDA DE ONDE SEU CASHBACK CHEGOU.',
      'en': 'UNDERSTAND WHERE YOUR CASHBACK CAME FROM.',
      'es': 'ENTIENDA DE DÓNDE PROVIENE SU REEMBOLSO.',
    },
    'j7lxiioh': {
      'pt': 'VOCÊ AINDA NÃO GANHOU CASHBACK',
      'en': 'YOU HAVEN\'T EARNED CASHBACK YET',
      'es': 'AÚN NO HAS GANADO REEMBOLSO EN EFECTIVO',
    },
    '46p6lb2y': {
      'pt': 'COMEÇE A EXPLORAR SUA CONTA AQUIBRAZIL E GANHE CASHBACKS!',
      'en': 'START EXPLORING YOUR AQUIBRAZIL ACCOUNT AND EARN CASHBACKS!',
      'es': '¡COMIENZA A EXPLORAR TU CUENTA AQUIBRAZIL Y GANA REEMBOLSOS!',
    },
    'l79okw7b': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // addressDeliveryMapNoAuth
  {
    'sgoqloeg': {
      'pt': 'ENDEREÇO',
      'en': 'ADDRESS',
      'es': 'DIRECCIÓN',
    },
    'lvts8zry': {
      'pt': 'CONFIRMAR LOCALIZAÇÃO',
      'en': 'CONFIRM LOCATION',
      'es': 'CONFIRMAR UBICACIÓN',
    },
    '7ihm2lt3': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // faqAnswer
  {
    'nkbn3lvg': {
      'pt': 'FAQ',
      'en': 'FAQ',
      'es': 'Preguntas frecuentes',
    },
    '44jr2r14': {
      'pt': 'FALAR COM A AQUIBRAZIL',
      'en': 'TALK TO AQUIBRAZIL',
      'es': 'HABLA CON AQUIBRAZIL',
    },
    '0pr5p9k5': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // temp8-confirm
  {
    'unw7acxp': {
      'pt': 'ESPERANDO A CONFIRMAÇÃO',
      'en': 'WAITING FOR CONFIRMATION',
      'es': 'ESPERANDO CONFIRMACIÓN',
    },
    'gegb4vxu': {
      'pt': 'PEDIDO ENVIADO',
      'en': 'ORDER SENT',
      'es': 'PEDIDO ENVIADO',
    },
    'cxmduadn': {
      'pt': 'PEDIDO ACEITO',
      'en': 'ORDER ACCEPTED',
      'es': 'PEDIDO ACEPTADO',
    },
    'tc2pcwdu': {
      'pt':
          'SUA SOLICITAÇÃO DE AGENDAMENTO FOI ENVIADO\nPARA A EMPRESA, AGUARDE SER ACEITO!',
      'en':
          'YOUR APPOINTMENT REQUEST HAS BEEN SENT\nTO THE COMPANY, PLEASE WAIT FOR IT TO BE ACCEPTED!',
      'es':
          'SU SOLICITUD DE CITA HA SIDO ENVIADA\n¡PARA LA EMPRESA, ESPERAR A SER ACEPTADO!',
    },
    'hnaoary8': {
      'pt': 'PAGAMENTO APROVADO',
      'en': 'PAYMENT APPROVED',
      'es': 'PAGO APROBADO',
    },
    'j6rdi191': {
      'pt': 'AGORA, O PAGAMENTO SERÁ PROCESSADO...\nPOR FAVOR, AGUARDE',
      'en': 'NOW THE PAYMENT WILL BE PROCESSED...\nPLEASE WAIT',
      'es': 'AHORA SE PROCESARÁ EL PAGO...\nESPERE POR FAVOR',
    },
    'lsacyaxr': {
      'pt': 'AGENDAMENTO CONFIRMADO',
      'en': 'APPOINTMENT CONFIRMED',
      'es': 'CITA CONFIRMADA',
    },
    'cg09m7x8': {
      'pt': 'AGENDAMENTO CONFIRMADO',
      'en': 'APPOINTMENT CONFIRMED',
      'es': 'CITA CONFIRMADA',
    },
    'r4sxh8vc': {
      'pt': 'CANCELAR AGENDAMENTO',
      'en': 'CANCEL APPOINTMENT',
      'es': 'CANCELAR CITA',
    },
    'efudfb8u': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // accessInfo
  {
    'b5j4e235': {
      'pt': 'INFORMAÇÕES DE ACESSO',
      'en': 'ACCESS INFORMATION',
      'es': 'INFORMACIÓN DE ACCESO',
    },
    'z9r9txx5': {
      'pt': 'DADOS DE ACESSO',
      'en': 'ACCESS DATA',
      'es': 'ACCESO A DATOS',
    },
    '94g67n5k': {
      'pt':
          'Estes dados são a sua forma de acesso à AquiBrazil. Seu e-mail não pode ser alterado, porque é a informação principal de acesso à sua conta.',
      'en':
          'This information is your way of accessing AquiBrazil. Your email address cannot be changed, as it is the main information used to access your account.',
      'es':
          'Estos datos son su forma de acceder a AquiBrazil. Su correo electrónico no se puede cambiar, ya que es la información principal de acceso a su cuenta.',
    },
    '31hhg8h9': {
      'pt': 'E-MAIL',
      'en': 'E-MAIL',
      'es': 'CORREO ELECTRÓNICO',
    },
    'yvae22nz': {
      'pt': 'TELEFONE',
      'en': 'TELEPHONE',
      'es': 'TELÉFONO',
    },
    'eudrmv0q': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // pagOffAnuncio
  {
    'r4esus5a': {
      'pt': 'DADOS DA CONTA',
      'en': 'ACCOUNT DATA',
      'es': 'DATOS DE LA CUENTA',
    },
    'zrfykyxn': {
      'pt': 'ESCOLHA SE QUER RECEBER ANÚNCIOS DE FORA DA AQUIBRAZIL',
      'en':
          'CHOOSE IF YOU WANT TO RECEIVE ADVERTISEMENTS FROM OUTSIDE AQUIBRAZIL',
      'es': 'ELIJA SI QUIERE RECIBIR ANUNCIOS DE FUERA DE AQUIBRAZIL',
    },
    'qqf78muo': {
      'pt':
          'Os anúncios são apresentados em sites e apps de terceiros que utilizam o nosso serviço de publicidade. O anunciante define seu público alvo, sem acesso a seus dados pessoais.',
      'en':
          'Ads are displayed on third-party websites and apps that use our advertising service. The advertiser defines their target audience, without access to your personal data.',
      'es':
          'Los anuncios se muestran en sitios web y aplicaciones de terceros que utilizan nuestro servicio de publicidad. El anunciante define su público objetivo, sin acceso a sus datos personales.',
    },
    'b8jlcc84': {
      'pt': 'QUERO RECEBER ANÚNCIOS DE TERCEIROS',
      'en': 'I WANT TO RECEIVE THIRD PARTY ADVERTISEMENTS',
      'es': 'QUIERO RECIBIR PUBLICIDAD DE TERCEROS',
    },
    '0gtrrw3b': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // completeProfileValidateNumber
  {
    '6yx0t7av': {
      'pt': 'ENVIAMOS O CÓDIGO PARA SEU CELULAR',
      'en': 'WE SEND THE CODE TO YOUR CELL PHONE',
      'es': 'TE ENVIAMOS EL CÓDIGO A TU CELULAR',
    },
    'fbc3x05u': {
      'pt': 'E-mail obrigatório.',
      'en': 'Email required.',
      'es': 'Se requiere correo electrónico.',
    },
    's9x4te1l': {
      'pt': 'O e-mail não é válido.',
      'en': 'The email is not valid.',
      'es': 'El correo electrónico no es válido.',
    },
    'p0yiorki': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable.',
    },
    'gqfitkzx': {
      'pt': 'PARA REENVIAR O CÓDIGO, AGUARDE',
      'en': 'TO RESEND THE CODE, PLEASE WAIT',
      'es': 'PARA REENVIAR EL CÓDIGO, POR FAVOR ESPERE',
    },
    'ypypb730': {
      'pt': 'ENVIAR NOVAMENTE',
      'en': 'SEND AGAIN',
      'es': 'ENVIAR OTRA VEZ',
    },
    '4zrd4el9': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // voeAzulSignup
  {
    'na2xth83': {
      'pt': 'OK',
      'en': 'OK',
      'es': 'DE ACUERDO',
    },
    'ahlm2dk0': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // signup-step1
  {
    'ub6n5mnr': {
      'pt': 'OU CONTINUE COM',
      'en': 'OR CONTINUE WITH',
      'es': 'O CONTINUAR CON',
    },
    'a5jfr84y': {
      'pt': 'QUAL É O SEU E-MAIL?',
      'en': 'WHAT IS YOUR EMAIL?',
      'es': '¿CUAL ES TU CORREO ELECTRÓNICO?',
    },
    '4orkiuiu': {
      'pt': 'SEU EMAIL',
      'en': 'YOUR EMAIL',
      'es': 'SU CORREO ELECTRÓNICO',
    },
    'osm1s0xw': {
      'pt': 'E-mail obrigatório.',
      'en': 'Email required.',
      'es': 'Se requiere correo electrónico.',
    },
    'yy8kjpme': {
      'pt': 'O e-mail não é válido.',
      'en': 'The email is not valid.',
      'es': 'El correo electrónico no es válido.',
    },
    'xghbe1vl': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'lz22uj4m': {
      'pt': 'NÓS ENVIAREMOS UM CÓDIGO PARA VALIDARMOS SEU E-MAIL. ',
      'en': 'WE WILL SEND YOU A CODE TO VALIDATE YOUR EMAIL.',
      'es': 'TE ENVIAREMOS UN CÓDIGO PARA VALIDAR TU CORREO ELECTRÓNICO.',
    },
    'si1j1y5a': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    '09u2y1ge': {
      'pt': 'VOCÊ JÁ TEM CONTA?',
      'en': 'DO YOU ALREADY HAVE AN ACCOUNT?',
      'es': '¿YA TIENES UNA CUENTA?',
    },
    'wj0p6r50': {
      'pt': ' ENTRAR',
      'en': 'TO ENTER',
      'es': 'PARA ENTRAR',
    },
    '985r87b6': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // completeProfileNumber
  {
    'q4l9icem': {
      'pt': 'QUAL O SEU NÚMERO DE CELULAR?',
      'en': 'WHAT IS YOUR CELL PHONE NUMBER?',
      'es': '¿CUAL ES TU NUMERO DE TELEFONO CELULAR?',
    },
    '9bxx0jmb': {
      'pt': 'CELULAR',
      'en': 'CELL PHONE',
      'es': 'TELÉFONO MÓVIL',
    },
    'j05qgcik': {
      'pt': 'NÓS ENVIAREMOS UM CÓDIGO PARA VALIDARMOS SEU TELEFONE.',
      'en': 'WE WILL SEND YOU A CODE TO VALIDATE YOUR PHONE.',
      'es': 'TE ENVIAREMOS UN CÓDIGO PARA VALIDAR TU TELÉFONO.',
    },
    'jmi11pp5': {
      'pt': 'POR ONDE DESEJA RECEBER?',
      'en': 'WHERE DO YOU WANT TO RECEIVE IT?',
      'es': '¿DONDE QUIERES RECIBIRLO?',
    },
    'bh8xdk9m': {
      'pt': 'SMS',
      'en': 'SMS',
      'es': 'SMS',
    },
    '1qban4fh': {
      'pt': 'WHATSAPP',
      'en': 'WHATSAPP',
      'es': 'WHATSAPP',
    },
    '1ajc4b8r': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // allCategories
  {
    'g94cv4e2': {
      'pt': 'BUSCAR POR CATEGORIA',
      'en': 'SEARCH BY CATEGORY',
      'es': 'BUSCAR POR CATEGORÍA',
    },
    'vl90rzg9': {
      'pt': 'TODOS',
      'en': 'ALL',
      'es': 'TODO',
    },
    '2k45sl8b': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // rentalAutomotive
  {
    '2m4jhm6t': {
      'pt': 'TODOS',
      'en': 'ALL',
      'es': 'TODO',
    },
    'ac4ns3qp': {
      'pt': 'OFERTAS',
      'en': 'OFFERS',
      'es': 'OFERTAS',
    },
    '5t45t93l': {
      'pt': '4.5',
      'en': '4.5',
      'es': '4.5',
    },
    'pz612tev': {
      'pt': '(1.200)',
      'en': '(1,200)',
      'es': '(1.200)',
    },
    '6gfus8la': {
      'pt': 'VEICULOS',
      'en': 'VEHICLES',
      'es': 'VEHÍCULOS',
    },
    'smmthp8f': {
      'pt': '5.5 MILHAS',
      'en': '5.5 MILES',
      'es': '5,5 MILLAS',
    },
    'ptmrbqkh': {
      'pt': 'OS MAIS PEOCURADOS',
      'en': 'MOST WANTED',
      'es': 'Los más buscados',
    },
    'o4rze7sx': {
      'pt': 'HONDA CIVIC',
      'en': 'HONDA CIVIC',
      'es': 'Honda Cívico',
    },
    '8xzd2pv5': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    '8pn7c88r': {
      'pt': '49.99',
      'en': '49.99',
      'es': '49,99',
    },
    'ggr4kx6i': {
      'pt': ' POR DIA',
      'en': 'PER DAY',
      'es': 'POR DÍA',
    },
    'pl1mecj0': {
      'pt': 'NO CLUBE VOCÊ ECONOMIZA',
      'en': 'AT THE CLUB YOU SAVE',
      'es': 'EN EL CLUB AHORRAS',
    },
    'g15pz8qw': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    '0eblp12w': {
      'pt': '4.99',
      'en': '4.99',
      'es': '4,99',
    },
    '37llhw48': {
      'pt': 'NO CLUBE VOCÊ ECONOMIZA',
      'en': 'AT THE CLUB YOU SAVE',
      'es': 'EN EL CLUB AHORRAS',
    },
    '6l7ngy5x': {
      'pt': ' \$',
      'en': '\$',
      'es': '\$',
    },
    'rgzype7d': {
      'pt': '4.99',
      'en': '4.99',
      'es': '4,99',
    },
    'n9fkaycw': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // membership
  {
    'ql57ilx7': {
      'pt': 'AQUIPASS',
      'en': 'AQUIPASS',
      'es': 'AQUIPASS',
    },
    '0onqs37u': {
      'pt': 'ATÉ ',
      'en': 'UNTIL',
      'es': 'HASTA',
    },
    'kjklhhsq': {
      'pt': '4X MAIS BENEFÍCIOS ',
      'en': '4X MORE BENEFITS',
      'es': '4 VECES MÁS BENEFICIOS',
    },
    's949hccv': {
      'pt': 'COM O AQUIPASS',
      'en': 'WITH AQUIPASS',
      'es': 'CON AQUIPASS',
    },
    '1ge22r04': {
      'pt':
          'COM O AQUIPASS VOCÊ GARANTE OS MAIORES DESCONTOS NOS MELHORES LUGARES!',
      'en':
          'WITH AQUIPASS YOU GUARANTEE THE BIGGEST DISCOUNTS IN THE BEST PLACES!',
      'es':
          '¡CON AQUIPASS GARANTIZAS LOS MAYORES DESCUENTOS EN LOS MEJORES LUGARES!',
    },
    'tlvez06s': {
      'pt': 'POSSUI ALGUM CUPOM DE DESCONTO?',
      'en': 'DO YOU HAVE A DISCOUNT COUPON?',
      'es': '¿TIENES UN CUPÓN DE DESCUENTO?',
    },
    '5y42u0s4': {
      'pt': 'Digite aqui seu cupom de desconto',
      'en': 'Enter your discount coupon here',
      'es': 'Introduce aquí tu cupón de descuento',
    },
    '16p5fuar': {
      'pt': 'CONVIDADO(A) POR ',
      'en': 'INVITED BY',
      'es': 'INVITADO POR',
    },
    'x4av0sq2': {
      'pt': 'Convidado(a) por ',
      'en': 'Invited by',
      'es': 'Invitado por',
    },
    'b247c3z0': {
      'pt': 'CUPOM DE DESCONTO APLICADO',
      'en': 'DISCOUNT COUPON APPLIED',
      'es': 'CUPÓN DE DESCUENTO APLICADO',
    },
    '7a159nqw': {
      'pt': 'Convidado(a) por ',
      'en': 'Invited by',
      'es': 'Invitado por',
    },
    '8h7z2xrs': {
      'pt': 'CUPOM NÃO ENCONTRADO',
      'en': 'COUPON NOT FOUND',
      'es': 'CUPÓN NO ENCONTRADO',
    },
    'e64lypay': {
      'pt': 'DIGITE SEU CPF',
      'en': 'ENTER YOUR CPF',
      'es': 'INGRESE SU CPF',
    },
    'k8hiyr6u': {
      'pt': 'OS PONTOS GANHOS SERÃO DISPONIBILIZADOS ',
      'en': 'EARNED POINTS WILL BE MADE AVAILABLE',
      'es': 'LOS PUNTOS GANADOS ESTARÁN DISPONIBLES',
    },
    '1ic2cor8': {
      'pt': 'Digite aqui seu CPF',
      'en': 'Enter your CPF here',
      'es': 'Ingrese su CPF aquí',
    },
    'dl441phu': {
      'pt': 'CPF INVÁLIDO',
      'en': 'INVALID CPF',
      'es': 'CPF NO VÁLIDO',
    },
    'tfmzk4l6': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'z7nr0b2h': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // completeProfile
  {
    'ianor12j': {
      'pt': 'FINALIZE SEU CADASTRO',
      'en': 'FINALIZE YOUR REGISTRATION',
      'es': 'FINALIZA TU REGISTRO',
    },
    'e19u2qw4': {
      'pt': 'SUAS INFORMAÇÕES ESTÃO SEGURAS E SÃO NOSSA PRIORIDADE.',
      'en': 'YOUR INFORMATION IS SECURE AND OUR PRIORITY.',
      'es': 'SU INFORMACIÓN ES SEGURA Y NUESTRA PRIORIDAD.',
    },
    'gxmnraml': {
      'pt': 'PRIMEIRO NOME',
      'en': 'FIRST NAME',
      'es': 'NOMBRE DE PILA',
    },
    'pa836nl0': {
      'pt': 'SOBRENOME',
      'en': 'SURNAME',
      'es': 'APELLIDO',
    },
    'fo9dfhhb': {
      'pt': 'EMAIL',
      'en': 'SURNAME',
      'es': 'APELLIDO',
    },
    'sua4b2nv': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    'z2mkbqv2': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    '72d8pwnj': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    'czpt8m34': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'xl0rxo43': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    'vqgbw82p': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'ohjnw4u2': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    'duvme8oy': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    '24qvddio': {
      'pt': 'COMPLETAR CADASTRO',
      'en': 'CREATE MY ACCOUNT',
      'es': 'CREAR MI CUENTA',
    },
    '3po7dx0q': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // emailEdit
  {
    '9nr6ukt6': {
      'pt': 'EDITAR E-MAIL DA CONTA',
      'en': 'EDIT ACCOUNT EMAIL',
      'es': 'EDITAR EL CORREO ELECTRÓNICO DE LA CUENTA',
    },
    '8snmknsp': {
      'pt': 'E-MAIL',
      'en': 'E-MAIL',
      'es': 'CORREO ELECTRÓNICO',
    },
    'kca3299n': {
      'pt':
          'Aqui estão os dados de acesso a sua conta AquiBrazil. Você usará esse e-mail para receber mensagens fazer login e recuperar sua conta. ',
      'en':
          'Here are the login details for your AquiBrazil account. You will use this email to receive messages to log in and recover your account.',
      'es':
          'Aquí están los datos de acceso a su cuenta AquiBrazil. Utilizarás este correo electrónico para recibir mensajes para iniciar sesión y recuperar tu cuenta.',
    },
    'bo50ece0': {
      'pt': 'E-MAIL',
      'en': 'E-MAIL',
      'es': 'CORREO ELECTRÓNICO',
    },
    'xnf0d6oa': {
      'pt': 'E-mail obrigatório',
      'en': 'Email required',
      'es': 'Se requiere correo electrónico',
    },
    '1x7e9ype': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    '94qiuk7m': {
      'pt': 'ATUALIZAR E-MAIL',
      'en': 'UPDATE EMAIL',
      'es': 'CORREO ELECTRÓNICO DE ACTUALIZACIÓN',
    },
    'uqlmp826': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // signup-step5
  {
    'jdn7oeka': {
      'pt': 'FINALIZE SEU CADASTRO',
      'en': 'FINALIZE YOUR REGISTRATION',
      'es': 'FINALIZA TU REGISTRO',
    },
    'n5vbdyco': {
      'pt': 'SUAS INFORMAÇÕES ESTÃO SEGURAS E SÃO NOSSA PRIORIDADE.',
      'en': 'YOUR INFORMATION IS SECURE AND OUR PRIORITY.',
      'es': 'SU INFORMACIÓN ES SEGURA Y NUESTRA PRIORIDAD.',
    },
    'pj6cjwgg': {
      'pt': 'PRIMEIRO NOME',
      'en': 'FIRST NAME',
      'es': 'NOMBRE DE PILA',
    },
    'qxt5vymy': {
      'pt': 'SOBRENOME',
      'en': 'SURNAME',
      'es': 'APELLIDO',
    },
    '9ixurdp2': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '22luhkbt': {
      'pt': 'SENHA',
      'en': 'PASSWORD',
      'es': 'CONTRASEÑA',
    },
    'azdkv54y': {
      'pt': 'REPETE',
      'en': 'REPEAT',
      'es': 'REPETIR',
    },
    'sspmwopz': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    'ipu4uwmw': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    't8y8ydc8': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    'mbf477o7': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'nslxxfat': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    '05kaxytd': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'evxao9pr': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    '6w8k8cr9': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    '3odme3o2': {
      'pt': 'NO MÍNIMO ',
      'en': 'AT LEAST',
      'es': 'AL MENOS',
    },
    '4lxb51ik': {
      'pt': '8 CARACTERES, ',
      'en': '8 CHARACTERS,',
      'es': '8 PERSONAJES,',
    },
    'xkktzdi3': {
      'pt': 'CONTENDO LETRAS E NÚMEROS.',
      'en': 'CONTAINING LETTERS AND NUMBERS.',
      'es': 'CONTIENE LETRAS Y NÚMEROS.',
    },
    'emrn75u3': {
      'pt': 'CRIAR MINHA CONTA',
      'en': 'CREATE MY ACCOUNT',
      'es': 'CREAR MI CUENTA',
    },
    '60igv2w1': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // cart2
  {
    'q9rkdazn': {
      'pt': 'SACOLA',
      'en': 'BAG',
      'es': 'BOLSA',
    },
    'zv2b9kfb': {
      'pt': 'LIMPAR',
      'en': 'TO CLEAN',
      'es': 'PARA LIMPIAR',
    },
    'iva6vri0': {
      'pt': 'ENTREGA',
      'en': 'DELIVERY',
      'es': 'ENTREGA',
    },
    're13yst0': {
      'pt': 'RETIRADA',
      'en': 'WITHDRAWAL',
      'es': 'RETIRO',
    },
    'yo7yq381': {
      'pt': 'ENTREGAR NO ENDEREÇO',
      'en': 'DELIVER TO ADDRESS',
      'es': 'ENTREGAR A DIRECCIÓN',
    },
    '4r04al90': {
      'pt': 'ALTERAR',
      'en': 'TO ALTER',
      'es': 'ALTERAR',
    },
    'xoczqfbd': {
      'pt': 'RETIRAR NA LOJA',
      'en': 'PICK UP IN STORE',
      'es': 'RECOGIDA EN TIENDA',
    },
    'dworfzzv': {
      'pt': ' / ',
      'en': '/',
      'es': '/',
    },
    '8wqibkx2': {
      'pt': 'R\$ 34,90 /1 item',
      'en': 'R\$ 34.90 /1 item',
      'es': 'R\$ 34,90 /1 unidad',
    },
    'b6vayfyp': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'jvqyy6sw': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // faq
  {
    'dimaagt8': {
      'pt': 'FAQ',
      'en': 'FAQ',
      'es': 'Preguntas frecuentes',
    },
    'ndwdptip': {
      'pt': 'FAQ',
      'en': 'FAQ',
      'es': 'Preguntas frecuentes',
    },
    'ngpjtx3r': {
      'pt': 'NÓS JÁ RESPONDEMOS A MAIORIA DAS SUAS PERGUNTAS. CONFIRA!',
      'en': 'WE HAVE ALREADY ANSWERED MOST OF YOUR QUESTIONS. CHECK IT OUT!',
      'es':
          'YA HEMOS RESPONDIDO LA MAYORÍA DE SUS PREGUNTAS. ¡ÉCHALE UN VISTAZO!',
    },
    'fldjmorb': {
      'pt': 'ESCOLHA UM TÓPICO',
      'en': 'CHOOSE A TOPIC',
      'es': 'Elige un tema',
    },
    '4d8fwey7': {
      'pt': 'FALAR COM A AQUIBRAZIL',
      'en': 'TALK TO AQUIBRAZIL',
      'es': 'HABLA CON AQUIBRAZIL',
    },
    '6y7nmu9a': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // signup-step6
  {
    'po0ixylk': {
      'pt': 'CONCEDA A LOCALIZAÇÃO ATUAL!',
      'en': 'GRANT CURRENT LOCATION!',
      'es': '¡CONCESIÓN DE UBICACIÓN ACTUAL!',
    },
    'uowb3vs2': {
      'pt':
          'ISSO NOS PERMITE MOSTRAR RESTAURANTES, SERVIÇOS E DESCONTOS PRÓXIMOS DE VOCÊ.',
      'en':
          'THIS ALLOWS US TO SHOW YOU RESTAURANTS, SERVICES AND DISCOUNTS NEAR YOU.',
      'es':
          'ESTO NOS PERMITE MOSTRARTE RESTAURANTES, SERVICIOS Y DESCUENTOS CERCA DE TI.',
    },
    'mvc2hao9': {
      'pt': 'USE A LOCALIZAÇÃO ATUAL',
      'en': 'USE CURRENT LOCATION',
      'es': 'UTILIZAR LA UBICACIÓN ACTUAL',
    },
    '42howzsh': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // security
  {
    'q3ta7juz': {
      'pt': 'SEGURANÇA',
      'en': 'SECURITY',
      'es': 'SEGURIDAD',
    },
    'g1dcr7qh': {
      'pt': 'USAR FACE ID PARA LOGAR',
      'en': 'USE FACE ID TO LOG IN',
      'es': 'UTILICE FACE ID PARA INICIAR SESIÓN',
    },
    '3ws9c7ma': {
      'pt':
          'Quando habilitado, o Face ID será\nusado para logar no AquiBrazil.',
      'en': 'When enabled, Face ID will be\nused to log into AquiBrazil.',
      'es':
          'Cuando esté habilitado, Face ID será\nutilizado para iniciar sesión en AquiBrazil.',
    },
    'vjle2gc5': {
      'pt': 'USAR DIGITAL PARA LOGAR',
      'en': 'USE DIGITAL TO LOG IN',
      'es': 'UTILICE DIGITAL PARA INICIAR SESIÓN',
    },
    '9uq4sbu4': {
      'pt':
          'Quando habilitado, a Digital será\nusado para logar no AquiBrazil.',
      'en': 'When enabled, the Digital will be\nused to log into AquiBrazil.',
      'es':
          'Cuando esté habilitado, Digital será\nutilizado para iniciar sesión en AquiBrazil.',
    },
    '4h4qdko5': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // ordersHelpHistory
  {
    'h45t9r0r': {
      'pt': 'DETALHES DA SOLICITAÇÃO',
      'en': 'APPLICATION DETAILS',
      'es': 'DETALLES DE LA SOLICITUD',
    },
    'k952pyau': {
      'pt': 'Home',
      'en': '',
      'es': '',
    },
  },
  // deliveryFood
  {
    'dwbi5ilf': {
      'pt': 'TODOS',
      'en': 'ALL',
      'es': 'TODO',
    },
    '9gp4mkz0': {
      'pt': 'OFERTAS',
      'en': 'OFFERS',
      'es': 'OFERTAS',
    },
    'pisuzef5': {
      'pt': ' | ',
      'en': '',
      'es': '',
    },
    'peh29hlp': {
      'pt': ' | ',
      'en': '',
      'es': '',
    },
    'n4zbki52': {
      'pt': 'OFERTAS IMPERDÍVEIS! APROVEITE AGORA!',
      'en': 'UNMISSABLE OFFERS! TAKE ADVANTAGE NOW!',
      'es': '¡OFERTAS IMPERDIBLES! ¡APROVECHA AHORA!',
    },
    'pcmf5gv5': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZA',
      'en': 'WITH AQUIPASS YOU SAVE',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'y3442gxi': {
      'pt': 'COM A AQUIPASS VOCÊ ECONOMIZA ',
      'en': 'WITH AQUIPASS YOU SAVE',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'oz164jtx': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // service
  {
    '4l71pn31': {
      'pt': 'TODOS',
      'en': 'ALL',
      'es': 'TODO',
    },
    '39c7tbbt': {
      'pt': ' | ',
      'en': '',
      'es': '',
    },
    '0udgrwog': {
      'pt': 'OFERTAS IMPERDÍVEIS! APROVEITE AGORA!',
      'en': 'UNMISSABLE OFFERS! TAKE ADVANTAGE NOW!',
      'es': '¡OFERTAS IMPERDIBLES! ¡APROVECHA AHORA!',
    },
    'dbie9m49': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZA',
      'en': 'WITH AQUIPASS YOU SAVE',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'xscxrgls': {
      'pt': 'COM A AQUIPASS VOCÊ ECONOMIZA ',
      'en': 'WITH AQUIPASS YOU SAVE',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'bc2la0iq': {
      'pt': 'RESERVAR',
      'en': 'BOOK',
      'es': 'LIBRO',
    },
    '96yxp592': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // orderDetails
  {
    'p5u46jqv': {
      'pt': 'DETALHES',
      'en': 'DETAILS',
      'es': 'DETALLES',
    },
    'myx5t027': {
      'pt': 'SOLICITAÇÃO DE ANÁLISE DE RECLAMAÇÃO EM ANDAMENTO',
      'en': 'REQUEST FOR ANALYSIS OF ONGOING COMPLAINT',
      'es': 'SOLICITUD DE ANÁLISIS DE QUEJA EN CURSO',
    },
    '0awadmzs': {
      'pt':
          'ENTRAREMOS EM CONTAO VIA E-MAIL OU PELO SEU TELEFONE CADASTRADO EM NOSSA PLATAFORMA COM A SOLUÇÃO',
      'en':
          'WE WILL CONTACT YOU VIA EMAIL OR BY YOUR PHONE NUMBER REGISTERED ON OUR PLATFORM WITH THE SOLUTION',
      'es':
          'NOS PONDREMOS EN CONTACTO CON USTED VÍA CORREO ELECTRÓNICO O A SU NÚMERO DE TELÉFONO REGISTRADO EN NUESTRA PLATAFORMA CON LA SOLUCIÓN',
    },
    'i6uvruo3': {
      'pt': 'REALIZADO AS: ',
      'en': 'DONE AS:',
      'es': 'HECHO COMO:',
    },
    'lszgo89n': {
      'pt': 'OBSERVAÇÃO: ',
      'en': 'OBSERVATION:',
      'es': 'OBSERVACIÓN:',
    },
    '3bprmx8f': {
      'pt': 'DETALHES DA SOLICITAÇÃO',
      'en': 'APPLICATION DETAILS',
      'es': 'DETALLES DE LA SOLICITUD',
    },
    '1huoy2rd': {
      'pt': 'SOLICITAÇÃO DE ANÁLISE RECUSADA',
      'en': 'REQUEST FOR ANALYSIS REFUSED',
      'es': 'SOLICITUD DE ANÁLISIS RECHAZADA',
    },
    '6l9h836f': {
      'pt': 'FINALIZADO AS: ',
      'en': 'FINALIZED AS:',
      'es': 'FINALIZADO COMO:',
    },
    'krlgoxyc': {
      'pt': 'OBSERVAÇÃO: ',
      'en': 'OBSERVATION:',
      'es': 'OBSERVACIÓN:',
    },
    'vvt4pzdn': {
      'pt': 'DETALHES DA SOLICITAÇÃO',
      'en': 'APPLICATION DETAILS',
      'es': 'DETALLES DE LA SOLICITUD',
    },
    'qe1vnkde': {
      'pt': 'SOLICITAÇÃO DE ANÁLISE CONCLUÍDA',
      'en': 'REQUEST FOR ANALYSIS COMPLETED',
      'es': 'SOLICITUD DE ANÁLISIS COMPLETADA',
    },
    'h7lhh9ix': {
      'pt': 'FINALIZADO AS: ',
      'en': 'FINALIZED AS:',
      'es': 'FINALIZADO COMO:',
    },
    'ryvxqbm1': {
      'pt': 'OBSERVAÇÃO: ',
      'en': 'OBSERVATION:',
      'es': 'OBSERVACIÓN:',
    },
    '5y2rv8oe': {
      'pt': 'DETALHES DA SOLICITAÇÃO',
      'en': 'APPLICATION DETAILS',
      'es': 'DETALLES DE LA SOLICITUD',
    },
    'm8icup59': {
      'pt': 'SEU PEDIDO FOI ENTREGUE',
      'en': 'YOUR ORDER HAS BEEN DELIVERED',
      'es': 'SU PEDIDO HA SIDO ENTREGADO',
    },
    '54tevu47': {
      'pt': 'PEDIDO ENTREGUE AS ',
      'en': 'ORDER DELIVERED AS',
      'es': 'PEDIDO ENTREGADO COMO',
    },
    'blsn0q26': {
      'pt': '14:48',
      'en': '14:48',
      'es': '14:48',
    },
    '5pvmanfs': {
      'pt': 'INFORMAÇÕES',
      'en': 'INFORMATION',
      'es': 'INFORMACIÓN',
    },
    'sf3duwcp': {
      'pt': 'CÓDIGO DE ENTREGA',
      'en': 'DELIVERY CODE',
      'es': 'CÓDIGO DE ENTREGA',
    },
    '5bmokfvc': {
      'pt': 'AJUDA',
      'en': 'HELP',
      'es': 'AYUDA',
    },
    'wnnyg6es': {
      'pt': 'RASTREAR PEDIDO',
      'en': 'TRACK ORDER',
      'es': 'SEGUIMIENTO DEL PEDIDO',
    },
    'n6l3hi1g': {
      'pt': 'CANCELAR PEDIDO',
      'en': 'CANCEL ORDER',
      'es': 'CANCELAR PEDIDO',
    },
    'bp7kxwwy': {
      'pt': 'CONFIRMAR ENTREGA',
      'en': 'CONFIRM DELIVERY',
      'es': 'CONFIRMAR ENTREGA',
    },
    '3s0w58fd': {
      'pt': 'AVALIAR PEDIDO',
      'en': 'EVALUATE ORDER',
      'es': 'EVALUAR ORDEN',
    },
    'e8b7oqan': {
      'pt': 'ENDEREÇO DE ENTREGA',
      'en': 'DELIVERY ADDRESS',
      'es': 'DIRECCIÓN DE ENTREGA',
    },
    'txbm6w8c': {
      'pt': 'RETIRADA NO LOCAL',
      'en': 'LOCAL PICKUP',
      'es': 'RECOGIDA LOCAL',
    },
    '6lbfzvew': {
      'pt': 'OBSERVAÇÃO',
      'en': 'OBSERVATION',
      'es': 'OBSERVACIÓN',
    },
    'js79e8tl': {
      'pt': 'DETALHES DO PEDIDO',
      'en': 'ORDER DETAILS',
      'es': 'DETALLES DEL PEDIDO',
    },
    'nuwjtpiu': {
      'pt': 'RESUMO DO PAGAMENTO',
      'en': 'PAYMENT SUMMARY',
      'es': 'RESUMEN DE PAGO',
    },
    'lpfm2er0': {
      'pt': 'SUBTOTAL',
      'en': 'SUBTOTAL',
      'es': 'TOTAL PARCIAL',
    },
    '8rvzu7us': {
      'pt': 'GORJETA',
      'en': 'TIP',
      'es': 'CONSEJO',
    },
    'th8gw6m6': {
      'pt': 'TAXA DE ENTREGA',
      'en': 'DELIVERY FEE',
      'es': 'TARIFA DE ENVÍO',
    },
    'i3mz7r0z': {
      'pt': 'IMPOSTO E TAXA DE SERVIÇO',
      'en': 'TAX AND SERVICE FEE',
      'es': 'IMPUESTOS Y TASAS DE SERVICIO',
    },
    'x33o0exx': {
      'pt': 'TOTAL A PAGAR',
      'en': 'TOTAL PAYABLE',
      'es': 'TOTAL A PAGAR',
    },
    'wlbqvz4x': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZOU',
      'en': 'WITH AQUIPASS YOU SAVED',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'e1em4e6a': {
      'pt': 'VOCÊ GANHOU 3% DE CASHBACK',
      'en': 'YOU HAVE EARNED 3% CASHBACK',
      'es': 'HAS GANADO UN 3% DE REEMBOLSO EN EFECTIVO',
    },
    'nkkwygwh': {
      'pt': 'FORMA DE PAGAMENTO',
      'en': 'PAYMENT METHOD',
      'es': 'FORMA DE PAGO',
    },
    'ottan1jr': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // ordersHelp
  {
    'c7k1izy6': {
      'pt': 'PEDIDO FINALIZADO',
      'en': 'ORDER COMPLETED',
      'es': 'PEDIDO COMPLETADO',
    },
    'i761s2om': {
      'pt': 'SENTIMOS MUITO QUE HOUVE UM PROBLEMA COM O SEU PEDIDO',
      'en': 'WE\'RE SO SORRY THERE WAS A PROBLEM WITH YOUR ORDER',
      'es': 'LAMENTAMOS MUCHO QUE HAYA HABIDO UN PROBLEMA CON SU PEDIDO.',
    },
    'mqnc4cqc': {
      'pt':
          'QUEREMOS ENTENDER O QUAL FOI O PROBLEMA PARA NEGOCIAMOS O REEMBOLSO OU OUTRA SOLUÇÃO COM A LOJA',
      'en':
          'WE WANT TO UNDERSTAND WHAT THE PROBLEM WAS SO WE CAN NEGOTIATE A REFUND OR OTHER SOLUTION WITH THE STORE',
      'es':
          'QUEREMOS ENTENDER CUÁL FUE EL PROBLEMA PARA PODER NEGOCIAR UN REEMBOLSO U OTRA SOLUCIÓN CON LA TIENDA',
    },
    'mkwt404c': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    '3rgj48ef': {
      'pt': 'O QUE ACONTECEU COM O SEU PEDIDO?',
      'en': 'WHAT HAPPENED TO YOUR ORDER?',
      'es': '¿QUÉ PASÓ CON TU PEDIDO?',
    },
    'ne2tpn1o': {
      'pt': 'SELECIONE O MOTIVO QUE MELHOR REPRESENTA O SEU PROBLEMA.',
      'en': 'SELECT THE REASON THAT BEST REPRESENTS YOUR PROBLEM.',
      'es': 'SELECCIONA EL MOTIVO QUE MEJOR REPRESENTA TU PROBLEMA.',
    },
    '2980it8j': {
      'pt': 'PRODUTO CHEGOU FRIO',
      'en': 'PRODUCT ARRIVED COLD',
      'es': 'EL PRODUCTO LLEGÓ FRÍO',
    },
    'z0dyrnhm': {
      'pt': 'PRODUTO ERRADO',
      'en': 'WRONG PRODUCT',
      'es': 'PRODUCTO INCORRECTO',
    },
    's14vh1ts': {
      'pt': 'PRODUTO INCOMPLETO',
      'en': 'INCOMPLETE PRODUCT',
      'es': 'PRODUCTO INCOMPLETO',
    },
    '0ppxiq5c': {
      'pt': 'PRODUTO DANIFICADO',
      'en': 'DAMAGED PRODUCT',
      'es': 'PRODUCTO DAÑADO',
    },
    'w0augal9': {
      'pt': 'ATRASO NA ENTREGA',
      'en': 'DELAY IN DELIVERY',
      'es': 'RETRASO EN ENTREGA',
    },
    '8ia1f08g': {
      'pt': 'OUTRO',
      'en': 'OTHER',
      'es': 'OTRO',
    },
    'x21w7nwo': {
      'pt':
          'ANTES DE FINALIZAR, VOCÊ PODERÁ REVISAR SUA SOLICITAÇÃO E FAZER MUDANÇAS, SE NECESSÁRIO.',
      'en':
          'BEFORE FINALIZING, YOU MAY REVIEW YOUR APPLICATION AND MAKE CHANGES IF NECESSARY.',
      'es':
          'ANTES DE FINALIZAR, PUEDE REVISAR SU SOLICITUD Y HACER CAMBIOS SI ES NECESARIO.',
    },
    'nd673286': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'f4y05h29': {
      'pt': 'CONTE MAIS DETALHES SOBRE O PROBLEMA',
      'en': 'TELL US MORE DETAILS ABOUT THE PROBLEM',
      'es': 'CUÉNTANOS MÁS DETALLES SOBRE EL PROBLEMA',
    },
    '9c0r94ob': {
      'pt': 'NOS CONTE O QUE ACHOU DO SEU PEDIDO (OBRIGATÓRIO)',
      'en': 'TELL US WHAT YOU THOUGHT OF YOUR ORDER (MANDATORY)',
      'es': 'DÍGANOS QUÉ LE PARECIÓ SU PEDIDO (OBLIGATORIO)',
    },
    '2b5zokwd': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'm35gae5a': {
      'pt': 'ADICIONE EVIDÊNCIAS DO PROBLEMA',
      'en': 'ADD EVIDENCE OF THE PROBLEM',
      'es': 'AÑADIR EVIDENCIA DEL PROBLEMA',
    },
    'y6ie6k8n': {
      'pt':
          'O ENVIO DE UMA FOTO DO ITEM, DA EMBALAGEM OU DA NOTA FISCAL PODEM AJUDAR A LOJA A ENTENDER O QUE ACONTECEU COM SEU PEDIDO.',
      'en':
          'SENDING A PHOTO OF THE ITEM, PACKAGING OR INVOICE CAN HELP THE STORE UNDERSTAND WHAT HAPPENED TO YOUR ORDER.',
      'es':
          'ENVIAR UNA FOTO DEL ARTÍCULO, EMBALAJE O FACTURA PUEDE AYUDAR A LA TIENDA A ENTENDER QUÉ SUCEDIÓ CON SU PEDIDO.',
    },
    'owkqt01u': {
      'pt': 'REVISAR SOLICITAÇÃO',
      'en': 'REVIEW REQUEST',
      'es': 'SOLICITUD DE REVISIÓN',
    },
    '9yegjyd3': {
      'pt': 'REVISE SUA SOLICITAÇÃO',
      'en': 'REVIEW YOUR REQUEST',
      'es': 'REVISA TU SOLICITUD',
    },
    '4r87pzxs': {
      'pt': 'EVIDÊNCIAS DO PROBLEMA',
      'en': 'EVIDENCE OF THE PROBLEM',
      'es': 'EVIDENCIA DEL PROBLEMA',
    },
    '5i8sxdcu': {
      'pt': 'ENVIAR',
      'en': 'TO SEND',
      'es': 'PARA ENVIAR',
    },
    'j3elzjdn': {
      'pt': 'Home',
      'en': '',
      'es': '',
    },
  },
  // profile
  {
    'qu14tv26': {
      'pt': 'OPÇÕES',
      'en': 'OPTIONS',
      'es': 'OPCIONES',
    },
    'kmni54bk': {
      'pt': 'SUA CONTA',
      'en': 'YOUR ACCOUNT',
      'es': 'SU CUENTA',
    },
    'hpotk948': {
      'pt': 'DADOS DA CONTA',
      'en': 'ACCOUNT DATA',
      'es': 'DATOS DE LA CUENTA',
    },
    '1o8xney2': {
      'pt': 'MENSAGENS',
      'en': 'MESSAGES',
      'es': 'MENSAJES',
    },
    'h8vuehrk': {
      'pt': 'NOTIFICAÇÕES',
      'en': 'NOTIFICATIONS',
      'es': 'NOTIFICACIONES',
    },
    'me624ak8': {
      'pt': 'MEUS MÉTODOS DE PAGAMENTO',
      'en': 'MY PAYMENT METHODS',
      'es': 'MIS MÉTODOS DE PAGO',
    },
    'z6eyp5ic': {
      'pt': 'CLUBE DE PARCEIROS',
      'en': 'PARTNERS CLUB',
      'es': 'CLUB DE SOCIOS',
    },
    'p1sveqlx': {
      'pt': 'AQUIPASS',
      'en': 'AQUIPASS',
      'es': 'AQUIPASS',
    },
    'sxnylobj': {
      'pt': 'HISTÓRICO DE PEDIDOS',
      'en': 'ORDER HISTORY',
      'es': 'HISTORIAL DE PEDIDOS',
    },
    'f7qczhc3': {
      'pt': 'MEUS ENDEREÇOS',
      'en': 'MY ADDRESSES',
      'es': 'MIS DIRECCIONES',
    },
    'qkoobr9d': {
      'pt': 'SUPORTE',
      'en': 'SUPPORT',
      'es': 'APOYO',
    },
    'v49jxr92': {
      'pt': 'AJUDA',
      'en': 'HELP',
      'es': 'AYUDA',
    },
    'xi2tgy7y': {
      'pt': 'AVALIE O APLICATIVO',
      'en': 'RATE THE APP',
      'es': 'CALIFICA LA APLICACIÓN',
    },
    'svq7l1b2': {
      'pt': 'PREFERÊNCIAS',
      'en': 'PREFERENCES',
      'es': 'PREFERENCIAS',
    },
    'hxag7o76': {
      'pt': 'IDIOMA',
      'en': 'LANGUAGE',
      'es': 'IDIOMA',
    },
    '4xgvm94t': {
      'pt': 'SEGURANÇA',
      'en': 'SECURITY',
      'es': 'SEGURIDAD',
    },
    'non0ybld': {
      'pt': 'CONFIGURAÇÕES',
      'en': 'SETTINGS',
      'es': 'AJUSTES',
    },
    'coyksfo4': {
      'pt': 'APAGAR CONTA',
      'en': 'DELETE ACCOUNT',
      'es': 'ELIMINAR CUENTA',
    },
    '8htaqjsg': {
      'pt': 'NOSSAS REDES',
      'en': 'OUR NETWORKS',
      'es': 'NUESTRAS REDES',
    },
    'p5pnpy68': {
      'pt': 'INSTAGRAM',
      'en': 'INSTAGRAM',
      'es': 'INSTAGRAM',
    },
    'qga2yg9z': {
      'pt': 'DESCONECTAR',
      'en': 'DISCONNECT',
      'es': 'DESCONECTAR',
    },
  },
  // home
  {
    '7yakzcde': {
      'pt': 'HOME',
      'en': 'HOME',
      'es': 'HOME',
    },
    'a631xi16': {
      'pt': 'PROMOS DO MÊS DELIVERY',
      'en': 'DELIVERY MONTH PROMOS',
      'es': 'PROMOS DE ENTREGA POR MES',
    },
    '9qg5u7ed': {
      'pt': 'NOSSO CLUB DE PARCEIROS',
      'en': 'OUR PARTNER CLUB',
      'es': 'NUESTRO CLUB SOCIO',
    },
    'iongg50t': {
      'pt': '+15% DE DESCONTO COM AQUIPASS',
      'en': '+15% DISCOUNT WITH AQUIPASS',
      'es': '+15% DESCUENTO CON AQUIPASS',
    },
    '92jsf2c9': {
      'pt': 'EM BREVE',
      'en': 'SHORTLY',
      'es': 'DENTRO DE POCO',
    },
    'vib538gu': {
      'pt': 'VEJA AS LOJAS QUE ESTÃO CHEGANDO NO APP',
      'en': 'SEE THE STORES THAT ARE COMING TO THE APP',
      'es': 'MIRA LAS TIENDAS QUE LLEGAN A LA APP',
    },
    'gq5j4efm': {
      'pt': 'MEUS PEDIDOS\nRECENTES',
      'en': 'MY RECENT\nORDERS',
      'es': 'MIS PEDIDOS\nRECIENTE',
    },
    '4ymww51f': {
      'pt': 'HISTÓRICO DE PEDIDOS',
      'en': 'ORDER HISTORY',
      'es': 'HISTORIAL DE PEDIDOS',
    },
    'g61vpjax': {
      'pt': 'TODAS AS LOJAS',
      'en': 'ALL STORES',
      'es': 'TODAS LAS TIENDAS',
    },
    'f8z7x8a0': {
      'pt': 'CATEGORIA',
      'en': 'CATEGORY',
      'es': 'CATEGORÍA',
    },
    'omm5ygr5': {
      'pt': 'RETIRADA',
      'en': 'WITHDRAWAL',
      'es': 'RETIRO',
    },
    'lzqh8h0w': {
      'pt': 'ENTREGA GRÁTIS',
      'en': 'FREE DELIVERY',
      'es': 'ENTREGA GRATUITA',
    },
    'cqho8gfr': {
      'pt': 'DESCONTO DO CLUBE',
      'en': 'CLUB DISCOUNT',
      'es': 'DESCUENTO DEL CLUB',
    },
    'elczxofs': {
      'pt': 'PREÇO',
      'en': 'PRICE',
      'es': 'PRECIO',
    },
    'mln9k1v6': {
      'pt': 'AVALIAÇÕES',
      'en': 'REVIEWS',
      'es': 'RESEÑAS',
    },
    'tlhtl7qs': {
      'pt': 'DISTÂNCIA',
      'en': 'DISTANCE',
      'es': 'DISTANCIA',
    },
    '6igburi0': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // partners
  {
    'vkxzkpat': {
      'pt': 'PARCEIROS',
      'en': 'PARTNERS',
      'es': 'FOGONADURA',
    },
    'pk6f9005': {
      'pt': 'TODOS',
      'en': 'ALL',
      'es': 'TODO',
    },
    'aaa00w6k': {
      'pt': 'CATEGORIA VAZIA',
      'en': 'EMPTY CATEGORY',
      'es': 'CATEGORÍA VACÍA',
    },
    'yxeej7cy': {
      'pt': 'EM BREVE',
      'en': 'SHORTLY',
      'es': 'DENTRO DE POCO',
    },
    '4n0t3dpi': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // favoriteCompany
  {
    '9i9fbdw5': {
      'pt': 'MEUS FAVORITOS',
      'en': 'MY FAVORITES',
      'es': 'MIS FAVORITOS',
    },
    'le7jbbri': {
      'pt': 'LISTA DE FAVORITOS VAZIA',
      'en': 'EMPTY FAVORITE LIST',
      'es': 'LISTA DE FAVORITOS VACÍA',
    },
    'nyzgq20y': {
      'pt': 'SUAS EMPRESAS FAVORITAS APARECERÃO AQUI',
      'en': 'YOUR FAVORITE COMPANIES WILL APPEAR HERE',
      'es': 'TUS EMPRESAS FAVORITAS APARECERÁN AQUÍ',
    },
    'xn4asw9r': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // orderHistory
  {
    'myb08gba': {
      'pt': 'HISTÓRICO DE PEDIDOS',
      'en': 'ORDER HISTORY',
      'es': 'HISTORIAL DE PEDIDOS',
    },
    'b4fw56ij': {
      'pt': 'DELIVERY',
      'en': 'DELIVERY',
      'es': 'ENTREGA',
    },
    'o3c2lo4i': {
      'pt': 'AGENDAMENTOS',
      'en': 'APPOINTMENTS',
      'es': 'EQUIPO',
    },
    'u92zr70k': {
      'pt': 'CONCLUÍDO',
      'en': 'COMPLETED',
      'es': 'TERMINADO',
    },
    'z6sx1bco': {
      'pt': 'RECUSADO',
      'en': 'REFUSED',
      'es': 'RECHAZADO',
    },
    '4acz5fix': {
      'pt': 'CANCELADO',
      'en': 'CANCELED',
      'es': 'CANCELADO',
    },
    'owfbas64': {
      'pt': 'PENDENTE',
      'en': 'PENDING',
      'es': 'PENDIENTE',
    },
    'ob3fejyl': {
      'pt': 'EM PREPARO',
      'en': 'IN PREPARATION',
      'es': 'EN PREPARACIÓN',
    },
    'fboo98in': {
      'pt': 'PRONTO PARA \nRETIRADA',
      'en': 'READY FOR\nPICKUP',
      'es': 'LISTO PARA RECOGER',
    },
    'rg0m1s44': {
      'pt': 'SAIU PARA\nENTREGA',
      'en': 'OUT FOR\nDELIVERY',
      'es': 'LIBRE PARA ENTREGA',
    },
    '30qiob8f': {
      'pt': 'AGENDADO',
      'en': 'SCHEDULED',
      'es': 'PROGRAMADO',
    },
    'as39lw78': {
      'pt': 'SOLIICITAÇÃO DE \nNOVO HORÁRIO',
      'en': 'REQUEST FOR\nNEW SCHEDULE',
      'es': 'SOLICITUD DE \nNUEVO HORARIO',
    },
    '4jd9k1xy': {
      'pt': '-',
      'en': '',
      'es': '',
    },
    'vklfevcq': {
      'pt': 'DATA DO AGENDAMENTO',
      'en': 'APPOINTMENT DATE',
      'es': 'FECHA DE LA CITA',
    },
    'qglylwgn': {
      'pt': 'ITENS',
      'en': 'ITEMS',
      'es': 'ELEMENTOS',
    },
    'u5x337lz': {
      'pt': 'VOCÊ AINDA NÃO POSSUI NENHUM PEDIDO',
      'en': 'YOU DON\'T HAVE ANY ORDERS YET',
      'es': 'AÚN NO TIENES NINGÚN PEDIDO',
    },
    'l1jcqiec': {
      'pt':
          'SEUS PEDIDOS REALIZADOS APARECERÃO AQUI. QUE TAL FAZER UM PEDIDO AGORA?',
      'en':
          'YOUR PLACED ORDERS WILL APPEAR HERE. HOW ABOUT PLACING AN ORDER NOW?',
      'es':
          'SUS PEDIDOS REALIZADOS APARECERÁN AQUÍ. ¿Qué tal hacer un pedido ahora?',
    },
    'nxyn3ooa': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
  // bannerAquiPass
  {
    'yveidc6c': {
      'pt': 'COM O AQUIPASS VOCÊ ECONOMIZA ATÉ 20% EM LOJAS NO APLICATIVO. 🤩',
      'en': 'WITH AQUIPASS YOU SAVE UP TO\n20% IN STORES ON THE APP. 🤩',
      'es':
          'CON AQUIPASS AHORRAS HASTA\n20% DE DESCUENTO EN TIENDAS DENTRO DE LA APLICACIÓN. 🤩',
    },
  },
  // bannerNewVersion
  {
    '48zzw5wi': {
      'pt': 'NOVA ATUALIZAÇÃO DISPONÍVEL',
      'en': 'NEW UPDATE AVAILABLE',
      'es': 'NUEVA ACTUALIZACIÓN DISPONIBLE',
    },
  },
  // appointmentReeschedule
  {
    'jls1g3wx': {
      'pt':
          'OLÁ, ESTE HORÁRIO NÃO ESTÁ DISPONÍVEL, GOSTARIA DE OFERECER UM NOVO PARA VOCÊ',
      'en':
          'HELLO, THIS TIME IS NOT AVAILABLE, I WOULD LIKE TO OFFER YOU A NEW ONE',
      'es':
          'HOLA, ESTE TIEMPO NO ESTÁ DISPONIBLE, ME GUSTARÍA OFRECERTE UNO NUEVO',
    },
    'cpvzh5zr': {
      'pt': 'CANCELAR AGENDAMENTO',
      'en': 'CANCEL APPOINTMENT',
      'es': 'CANCELAR CITA',
    },
    'jb85ngc3': {
      'pt': 'ACEITAR',
      'en': 'TO ACCEPT',
      'es': 'ACEPTAR',
    },
  },
  // securityCheck
  {
    'es4ccv48': {
      'pt': 'DEIXE SUA CONTA MAIS SEGURA',
      'en': 'MAKE YOUR ACCOUNT MORE SECURE',
      'es': 'HAGA SU CUENTA MÁS SEGURA',
    },
    '6fr455ng': {
      'pt': 'Faça a verificação',
      'en': 'Get checked',
      'es': 'Hazte un chequeo',
    },
  },
  // EditCard
  {
    'l2v5z358': {
      'pt': 'DÉBITO',
      'en': 'DEBIT',
      'es': 'DÉBITO',
    },
    '8aq7osia': {
      'pt': 'Mastercard •••• 1234',
      'en': 'Mastercard •••• 1234',
      'es': 'Tarjeta MasterCard •••• 1234',
    },
    'iorg6fk6': {
      'pt': 'Editar cartão',
      'en': 'Edit card',
      'es': 'Editar tarjeta',
    },
    '0a0hexhm': {
      'pt': 'Excluir cartão',
      'en': 'Delete card',
      'es': 'Eliminar tarjeta',
    },
  },
  // selectPreferedTime
  {
    'orgmz5mq': {
      'pt': 'SELECIONE DIA E HORÁRIO',
      'en': 'SELECT DAY AND TIME',
      'es': 'SELECCIONE DÍA Y HORA',
    },
    '25bms3jw': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
  },
  // productsItemsCashH
  {
    'qd5z83cb': {
      'pt': '\$1,000.00',
      'en': '\$1,000.00',
      'es': '\$1,000.00',
    },
    'fmtc01dy': {
      'pt': '50%',
      'en': '50%',
      'es': '50%',
    },
    'yybixsxn': {
      'pt': '\$500.00',
      'en': '\$500.00',
      'es': '\$500.00',
    },
    '9i7ohbz1': {
      'pt': 'Smart TV 60\" Crystal UHD 4K 60AU7700',
      'en': 'Smart TV 60\" Crystal UHD 4K 60AU7700',
      'es': 'Televisor inteligente 60\" Crystal UHD 4K 60AU7700',
    },
  },
  // filterDistance
  {
    'ry1my9gi': {
      'pt': 'AJUSTE A DISTÂNCIA NO FILTRO ',
      'en': 'ADJUST THE DISTANCE ON THE FILTER',
      'es': 'AJUSTE LA DISTANCIA EN EL FILTRO',
    },
    'vrgonaxf': {
      'pt': '1 MILHAS',
      'en': '1 MILES',
      'es': '1 MILLA',
    },
    'ld96ptbn': {
      'pt': '100 MILHAS',
      'en': '100 MILES',
      'es': '100 MILLAS',
    },
    'xnz3zpmk': {
      'pt': 'APLICAR FILTRO',
      'en': 'APPLY FILTER',
      'es': 'APLICAR FILTRO',
    },
  },
  // azul-step5
  {
    '5o52xd0v': {
      'pt':
          'EM ATÉ 72H SEUS PONTOS ESTARÃO\nDISPONÍVEIS NA SUA CONTA AZUL FIDELIDADE.',
      'en':
          'WITHIN 72HOURS YOUR POINTS WILL BE AVAILABLE IN YOUR AZUL FIDELIDADE ACCOUNT.',
      'es':
          'SUS PUNTOS ESTARÁN DISPONIBLES DENTRO DE 72 HORAS\nDISPONIBLE EN TU CUENTA AZUL FIDELIDADE.',
    },
    'tj802w6b': {
      'pt': 'SOBRE SUA TROCA',
      'en': 'ABOUT YOUR EXCHANGE',
      'es': 'ACERCA DE SU INTERCAMBIO',
    },
    '7sm5azrk': {
      'pt': 'SALDO DE CASHBACK',
      'en': 'CASHBACK BALANCE',
      'es': 'SALDO DE REEMBOLSO',
    },
    'an9n7bm2': {
      'pt': 'SALDO APÓS O RESGATE',
      'en': 'BALANCE AFTER REDEMPTION',
      'es': 'SALDO DESPUÉS DEL REDENCIÓN',
    },
    'xvue7ajb': {
      'pt': '\$',
      'en': '38.90',
      'es': '38,90',
    },
    'd1d6dksc': {
      'pt': 'PONTOS AZUL FIDELIDADE',
      'en': 'BLUE LOYALTY POINTS',
      'es': 'PUNTOS DE FIDELIDAD AZUL',
    },
    '3h2000kt': {
      'pt': ' PTS',
      'en': '',
      'es': '',
    },
    '4l329mlm': {
      'pt': 'FIQUE ATENTO!',
      'en': 'STAY TUNED!',
      'es': '¡MANTÉNGANSE AL TANTO!',
    },
    '7ieykaqe': {
      'pt': 'EM ALGUNS INSTANTES O SEU SALDO DE CASHBACK SERÁ ATUALIZADO.',
      'en': 'YOUR CASHBACK BALANCE WILL BE UPDATED IN A FEW MOMENTS.',
      'es':
          'SU SALDO DE REEMBOLSO EN EFECTIVO SE ACTUALIZARÁ EN UNOS MOMENTOS.',
    },
    'vet87k6w': {
      'pt': 'COMPARTILHAR COMPROVANTE',
      'en': 'SHARE PROOF',
      'es': 'COMPARTIR PRUEBA',
    },
    '28piwf8n': {
      'pt': 'VOLTAR PARA MEU CASHBACK',
      'en': 'RETURN TO MY CASHBACK',
      'es': 'DEVOLVER A MI CASHBACK',
    },
  },
  // paymentMethodAdd
  {
    'l7nodzrr': {
      'pt': 'ADICIONAR CARTÃO',
      'en': 'ADD CARD',
      'es': 'AGREGAR TARJETA',
    },
    '83olu71a': {
      'pt':
          'PARA CONTINUAR, INSIRA UM CARTÃO VÁLIDO E FINALIZE SUA COMPRA COM SEGURANÇA.',
      'en':
          'TO CONTINUE, INSERT A VALID CARD AND FINALIZE YOUR PURCHASE SECURELY.',
      'es':
          'PARA CONTINUAR, INSERTE UNA TARJETA VÁLIDA Y FINALICE SU COMPRA DE FORMA SEGURA.',
    },
  },
  // bottomCartAlert
  {
    'x616gepn': {
      'pt': ' / ',
      'en': '/',
      'es': '/',
    },
    'cqverzuc': {
      'pt': ' itens',
      'en': 'items',
      'es': 'elementos',
    },
    'j3r997uk': {
      'pt': 'R\$ 34,90 /1 item',
      'en': 'R\$ 34.90 /1 item',
      'es': 'R\$ 34,90 /1 unidad',
    },
    'bc9mgejp': {
      'pt': 'VER SACOLA',
      'en': 'SEE BAG',
      'es': 'VER BOLSA',
    },
  },
  // pesquisaHome
  {
    'f7lqmxed': {
      'pt': 'O QUE DESEJA BUSCAR?',
      'en': 'WHAT DO YOU WANT TO SEARCH FOR?',
      'es': '¿QUÉ QUIERES BUSCAR?',
    },
  },
  // infoCompany2
  {
    'kbtgwxpz': {
      'pt': '200 avaliações',
      'en': '',
      'es': '',
    },
    'j4mtcivj': {
      'pt': 'INFORMAÇÕES',
      'en': 'INFORMATION',
      'es': 'INFORMACIÓN',
    },
    'kpwmsk3e': {
      'pt': 'DESCRIÇÃO DA EMPRESA',
      'en': 'COMPANY DESCRIPTION',
      'es': 'DESCRIPCIÓN DE LA EMPRESA',
    },
    '78qulgpo': {
      'pt': 'HOJE',
      'en': 'TODAY',
      'es': 'HOY',
    },
    'z59vsxgp': {
      'pt': 'AVALIAÇÕES',
      'en': 'REVIEWS',
      'es': 'RESEÑAS',
    },
    'h2epjuil': {
      'pt': 'Nome do cliente',
      'en': '',
      'es': '',
    },
    'zzw85pzu': {
      'pt': 'Descrição',
      'en': '',
      'es': '',
    },
  },
  // paymentMethodDelete
  {
    'ankzywx1': {
      'pt': 'QUER MESMO EXCLUIR ESTE CARTÃO?',
      'en': 'DO YOU REALLY WANT TO DELETE THIS CARD?',
      'es': '¿REALMENTE QUIERES ELIMINAR ESTA TARJETA?',
    },
    'qbnpuknq': {
      'pt': 'EXCLUIR CARTÃO',
      'en': 'DELETE CARD',
      'es': 'BORRAR TARJETA',
    },
    '3u5o981x': {
      'pt': 'CANCELAR',
      'en': 'CANCEL',
      'es': 'CANCELAR',
    },
  },
  // tradeCashForProducts
  {
    '4gz2s5sm': {
      'pt': 'Troque seu saldo \npor ',
      'en': 'Exchange your balance\nfor',
      'es': 'Cambia tu saldo \nponer',
    },
    '4nunvxj8': {
      'pt': 'experiências ',
      'en': 'experiences',
      'es': 'experiencias',
    },
    '6m5p0rid': {
      'pt': 'e\n',
      'en': 'and',
      'es': 'y',
    },
    'tfp7kt9x': {
      'pt': 'produtos exclusivos',
      'en': 'exclusive products',
      'es': 'productos exclusivos',
    },
    'zngfrmxf': {
      'pt': '!',
      'en': '!',
      'es': '!',
    },
    'm2zmqfd0': {
      'pt': 'Hello World',
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    'xop2crmd': {
      'pt': 'TROCAR AGORA',
      'en': 'EXCHANGE NOW',
      'es': 'CAMBIA AHORA',
    },
  },
  // productsItemsCashV
  {
    'tft4he9c': {
      'pt': '\$1,000.00',
      'en': '\$1,000.00',
      'es': '\$1,000.00',
    },
    'x78jgjhr': {
      'pt': '50%',
      'en': '50%',
      'es': '50%',
    },
    '4sjuzmqc': {
      'pt': '\$500.00',
      'en': '\$500.00',
      'es': '\$500.00',
    },
    'uljvga38': {
      'pt': 'Smart TV 60\" Crystal UHD 4K 60AU7700',
      'en': 'Smart TV 60\" Crystal UHD 4K 60AU7700',
      'es': 'Televisor inteligente 60\" Crystal UHD 4K 60AU7700',
    },
  },
  // orderDetailsServiceReeschedule
  {
    'hd9cogod': {
      'pt': 'OLÁ, POR FAVOR CONFIRME A DATA E HORA DA REMARCAÇÃO ABAIXO',
      'en': 'HELLO, PLEASE CONFIRM THE RESCHEDULING DATE AND TIME BELOW',
      'es':
          'HOLA, POR FAVOR CONFIRME LA FECHA Y HORA DE REPROGRAMACIÓN A CONTINUACIÓN',
    },
    'cptagprf': {
      'pt': 'CANCELAR',
      'en': 'CANCEL',
      'es': 'CANCELAR',
    },
    'tn1pvsr2': {
      'pt': 'CONFIRMAR',
      'en': 'CONFIRM',
      'es': 'CONFIRMAR',
    },
  },
  // cuponsItemsCashH
  {
    's42hvwrt': {
      'pt': 'McDonald\'s',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    'hetnhjzu': {
      'pt': 'Leve 2 Pague 1',
      'en': 'Buy 2 Pay 1',
      'es': 'Compre 2 y pague 1',
    },
    '77o4d0lj': {
      'pt': 'Qualquer item',
      'en': 'Any item',
      'es': 'Cualquier articulo',
    },
    'rgoaoir9': {
      'pt': 'Até 22/11/2024',
      'en': 'Until 11/22/2024',
      'es': 'Hasta el 22/11/2024',
    },
    'jaqpf3hg': {
      'pt': 'TROCAR',
      'en': 'TO REPLACE',
      'es': 'PARA REEMPLAZAR',
    },
    'tzrfqkoi': {
      'pt': '\$1.50',
      'en': '\$1.50',
      'es': '\$1,50',
    },
  },
  // azul-step1
  {
    'wmzap3jx': {
      'pt': 'PROGRAMA AZUL FIDELIDADE',
      'en': 'AZUL FIDELIDADE PROGRAM',
      'es': 'PROGRAMA DE FIDELIZACIÓN AZUL',
    },
    'csoi7h3g': {
      'pt':
          'CASO VOCÊ AINDA NÃO TENHA UMA CONTA CRIADA NO PROGRAMA AZUL FIDELIDADE, SEUS PONTOS SERÃO VINCULADOS AO SEU CPF. APÓS A CRIAÇÃO DA CONTA NO PROGRAMA DA AZUL, OS PONTOS ESTARÃO AUTOMATICAMENTE DISPONÍVEIS PARA USO.',
      'en':
          'IF YOU DO NOT YET HAVE AN ACCOUNT CREATED IN THE AZUL FIDELIDADE PROGRAM, YOUR POINTS WILL BE LINKED TO YOUR CPF. AFTER CREATING AN ACCOUNT IN THE AZUL PROGRAM, THE POINTS WILL AUTOMATICALLY BE AVAILABLE FOR USE.',
      'es':
          'SI AÚN NO TIENES UNA CUENTA CREADA EN EL PROGRAMA AZUL FIDELIDADE, TUS PUNTOS SE VINCULARÁN A TU CPF. DESPUÉS DE CREAR UNA CUENTA EN EL PROGRAMA AZUL, LOS PUNTOS ESTARÁN AUTOMÁTICAMENTE DISPONIBLES PARA SU USO.',
    },
    'kin2lv96': {
      'pt': 'CONTINUAR TROCA',
      'en': 'CONTINUE EXCHANGE',
      'es': 'CONTINUAR EL INTERCAMBIO',
    },
  },
  // PopupCodigo
  {
    '3i1rhhw9': {
      'pt': 'NÃO RECEBEU O CÓDIGO?',
      'en': 'DIDN\'T RECEIVE THE CODE?',
      'es': '¿NO RECIBISTE EL CÓDIGO?',
    },
    '4qt9rc7k': {
      'pt':
          'Verifique se digitou o número do seu celular corretamente. O SMS pode atrasar.',
      'en':
          'Please check that you have entered your mobile number correctly. The SMS may be delayed.',
      'es':
          'Por favor, compruebe que ha introducido correctamente su número de móvil. Los SMS pueden sufrir retrasos.',
    },
    'qhljq5mn': {
      'pt': '+55 (85) 98765-4321',
      'en': '+55 (85) 98765-4321',
      'es': '+55 (85) 98765-4321',
    },
    'jjl1cpal': {
      'pt': 'REENVIAR POR SMS',
      'en': 'RESEND BY SMS',
      'es': 'REENVIAR POR SMS',
    },
    'j8fyzkl2': {
      'pt': 'REENVIAR POR WHATSAPP',
      'en': 'RESEND BY WHATSAPP',
      'es': 'REENVIAR POR WHATSAPP',
    },
    'qp89z94c': {
      'pt': 'TROCAR NÚMERO DE TELEFONE',
      'en': 'CHANGE PHONE NUMBER',
      'es': 'CAMBIAR NÚMERO DE TELÉFONO',
    },
  },
  // addressNoAuth
  {
    'f17wir60': {
      'pt': 'BUSCAR ENDEREÇO E NÚMERO...',
      'en': 'SEARCH FOR ADDRESS AND NUMBER...',
      'es': 'BUSCAR DIRECCIÓN Y NUMERO...',
    },
    '79d98c7e': {
      'pt': 'USAR LOCALIZAÇÃO ATUAL',
      'en': 'USE CURRENT LOCATION',
      'es': 'UTILIZAR LA UBICACIÓN ACTUAL',
    },
  },
  // searchHome
  {
    'ygfs7k1s': {
      'pt': 'O QUE DESEJA BUSCAR?',
      'en': 'WHAT DO YOU WANT TO SEARCH FOR?',
      'es': '¿QUÉ QUIERES BUSCAR?',
    },
  },
  // orderCancelReason
  {
    'txloodzw': {
      'pt': 'CANCELAR PEDIDO',
      'en': 'CANCEL ORDER',
      'es': 'CANCELAR PEDIDO',
    },
    'mat0ucrb': {
      'pt': 'PEDIDO FEITO POR ENGANO',
      'en': 'ORDER MADE BY MISTAKE',
      'es': 'PEDIDO HECHO POR ERROR',
    },
    '1g884wmu': {
      'pt': 'SELECIONEI UMA FORMA DE PAGAMENTO ERRADA',
      'en': 'I SELECTED THE WRONG PAYMENT METHOD',
      'es': 'SELECCIONÉ EL MÉTODO DE PAGO INCORRECTO',
    },
    'vu3zhcsn': {
      'pt': 'MEU ENDEREÇO ESTÁ ERRADO',
      'en': 'MY ADDRESS IS WRONG',
      'es': 'MI DIRECCIÓN ESTÁ EQUIVOCADA',
    },
    '45q0acel': {
      'pt': 'OUTRO MOTIVO',
      'en': 'ANOTHER REASON',
      'es': 'OTRA RAZÓN',
    },
  },
  // AnexarArquivo
  {
    'j2oxb1q7': {
      'pt': 'ANEXAR AQUIVO',
      'en': 'ATTACH FILE',
      'es': 'ADJUNTAR ARCHIVO',
    },
    '5pac1fhw': {
      'pt': 'Escolha como deseja anexar seu arquivo a esta conversa',
      'en': 'Choose how you want to attach your file to this conversation',
      'es': 'Elige cómo quieres adjuntar tu archivo a esta conversación',
    },
    'g0ecyoru': {
      'pt': 'TIRAR FOTO',
      'en': 'TAKE PHOTO',
      'es': 'TOMAR FOTO',
    },
    '2cpbqu53': {
      'pt': 'ESCOLHER DA BIBLIOTECA',
      'en': 'CHOOSE FROM THE LIBRARY',
      'es': 'ELIGE DE LA BIBLIOTECA',
    },
  },
  // azul-step4
  {
    'ebi1c7ze': {
      'pt': 'RESUMO DA TROCA',
      'en': 'EXCHANGE SUMMARY',
      'es': 'RESUMEN DEL INTERCAMBIO',
    },
    'nvguu45t': {
      'pt': 'SALDO DE CASHBACK',
      'en': 'CASHBACK BALANCE',
      'es': 'SALDO DE REEMBOLSO',
    },
    '5ggj1b27': {
      'pt': 'SALDO APÓS O RESGATE',
      'en': 'BALANCE AFTER REDEMPTION',
      'es': 'SALDO DESPUÉS DEL REDENCIÓN',
    },
    'zca17g3f': {
      'pt': '\$',
      'en': '38.90',
      'es': '38,90',
    },
    'k91wtp5y': {
      'pt': 'PONTOS AZUL FIDELIDADE',
      'en': 'BLUE LOYALTY POINTS',
      'es': 'PUNTOS DE FIDELIDAD AZUL',
    },
    '299be3mj': {
      'pt': '4.000 pts',
      'en': '4,000 pts',
      'es': '4.000 puntos',
    },
    'bi0tp1ql': {
      'pt': 'PONTOS AZUL FIDELIDADE',
      'en': 'BLUE LOYALTY POINTS',
      'es': 'PUNTOS DE FIDELIDAD AZUL',
    },
    'sv4cqyuq': {
      'pt': ' PTS',
      'en': '',
      'es': '',
    },
    '5x0l7dz0': {
      'pt': 'CONCLUIR TROCA',
      'en': 'COMPLETE EXCHANGE',
      'es': 'CAMBIO COMPLETO',
    },
    'nqzlyxe8': {
      'pt': 'VOLTAR',
      'en': 'TO GO BACK',
      'es': 'Para volver atrás',
    },
  },
  // paymentMethodChange
  {
    'lzrqirmg': {
      'pt': 'MÉTODOS DE PAGAMENTO',
      'en': 'PAYMENT METHODS',
      'es': 'MÉTODOS DE PAGO',
    },
    'fwejz6ey': {
      'pt': 'SELECIONE A FORMA DESEJADA PARA CONTINUAR.',
      'en': 'SELECT THE DESIRED FORM TO CONTINUE.',
      'es': 'SELECCIONE EL FORMULARIO DESEADO PARA CONTINUAR.',
    },
    'ooqqx4lb': {
      'pt': ' ••••',
      'en': '••••',
      'es': '••••',
    },
    'ypzdrbzd': {
      'pt': 'Mastercard •••• 1234',
      'en': 'Mastercard •••• 1234',
      'es': 'Tarjeta MasterCard •••• 1234',
    },
    '6vywoevh': {
      'pt': 'ADICIONAR NOVA FORMA DE PAGAMENTO',
      'en': 'ADD NEW PAYMENT METHOD',
      'es': 'AGREGAR NUEVO MÉTODO DE PAGO',
    },
  },
  // signup-step3-phoneCountry
  {
    'xug6wjm7': {
      'pt': 'BRASIL  +55',
      'en': 'BRAZIL +55',
      'es': 'BRASIL +55',
    },
    'eswz2hu6': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    'stnrz6g5': {
      'pt': 'ESTADOS UNIDOS  +1',
      'en': 'UNITED STATES +1',
      'es': 'ESTADOS UNIDOS +1',
    },
    'h6qk8ce1': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    '5lywi5em': {
      'pt': 'ESPANHA  +34',
      'en': 'SPAIN +34',
      'es': 'ESPAÑA +34',
    },
    'daoz1g64': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    '22mfxtjn': {
      'pt': 'CANADA  +1',
      'en': 'CANADA +1',
      'es': 'CANADÁ +1',
    },
    'fiyqjyx6': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    'uptp2asi': {
      'pt': 'PORTUGAL  +351',
      'en': 'PORTUGAL +351',
      'es': 'PORTUGAL +351',
    },
    'xgrdwjbe': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    'ub3saai7': {
      'pt': 'DUBAI  +971',
      'en': 'DUBAI +971',
      'es': 'DUBÁI +971',
    },
    'xike7cjt': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
  },
  // filterPrice
  {
    'ok037zuf': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    '94xmul08': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    'zxgwoawy': {
      'pt': '\$\$',
      'en': '\$\$',
      'es': '\$\$',
    },
    'dit4u0cg': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    's5yufag2': {
      'pt': '\$\$\$',
      'en': '\$\$\$',
      'es': '\$\$\$',
    },
    '2gknqg0e': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
    '8fm7km7g': {
      'pt': '\$\$\$\$',
      'en': '\$\$\$\$',
      'es': '\$\$\$\$',
    },
    'ouy8yvut': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
  },
  // helpContactEmail
  {
    'zv0if3oe': {
      'pt': 'CONTACTE-NOS',
      'en': 'CONTACT US',
      'es': 'CONTÁCTENOS',
    },
    'w7x65ezs': {
      'pt':
          'NOS ENVIE SUA DÚVIDA POR E-MAIL E LHE RESPONDEREMOS O MAIS RÁPIDO O POSSÍVEL!',
      'en':
          'SEND US YOUR QUESTION BY EMAIL AND WE WILL RESPOND AS SOON AS POSSIBLE!',
      'es':
          'ENVÍANOS TU CONSULTA POR EMAIL Y TE RESPONDEREMOS LO ANTES POSIBLE!',
    },
    'roc095za': {
      'pt': 'NOME COMPLETO',
      'en': 'FULL NAME',
      'es': 'NOMBRE COMPLETO',
    },
    'wzer6tz1': {
      'pt': 'DIGITE AQUI SEU NOME COMPLETO',
      'en': 'ENTER YOUR FULL NAME HERE',
      'es': 'INTRODUZCA SU NOMBRE COMPLETO AQUÍ',
    },
    'cxf14qd2': {
      'pt': 'E-MAIL',
      'en': 'E-MAIL',
      'es': 'CORREO ELECTRÓNICO',
    },
    '5cfsmznu': {
      'pt': 'Digite aqui seu e-mail',
      'en': 'Enter your email here',
      'es': 'Introduce tu email aquí',
    },
    'oxt05d4p': {
      'pt': 'DESCRIÇÃO DO PROBLEMA',
      'en': 'PROBLEM DESCRIPTION',
      'es': 'DESCRIPCION DEL PROBLEMA',
    },
    'wwd8n40b': {
      'pt':
          'FORNEÇA UM RESUMO CLARO E OBJETIVO DO QUE ACONTECEU, INCLUINDO DETALHES IMPORTANTES PARA ANÁLISE E RESOLUÇÃO DO CASO.',
      'en':
          'PROVIDE A CLEAR AND OBJECTIVE SUMMARY OF WHAT HAPPENED, INCLUDING IMPORTANT DETAILS FOR ANALYSIS AND RESOLUTION OF THE CASE.',
      'es':
          'PROPORCIONAR UN RESUMEN CLARO Y OBJETIVO DE LO SUCEDIDO, INCLUYENDO DETALLES IMPORTANTES PARA EL ANÁLISIS Y RESOLUCIÓN DEL CASO.',
    },
    'ulghbdjy': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    '8s9hgh6x': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'clo916qe': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    '2nj7cpx7': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    'ljf3vbhv': {
      'pt': 'Campo obrigatório',
      'en': 'Mandatory field',
      'es': 'Campo obligatorio',
    },
    'sr9q6k56': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
    },
    '4vusm6rc': {
      'pt': 'ENVIAR MENSAGEM',
      'en': 'SEND MESSAGE',
      'es': 'ENVIAR MENSAJE',
    },
  },
  // alertNoAuth
  {
    'rldhcjst': {
      'pt': 'PARA UMA MELHOR EXPERIÊNCIA, CRIE SUA\nCONTA NA AQUIBRAZIL!',
      'en': 'FOR A BETTER EXPERIENCE, CREATE YOUR\nACCOUNT AT AQUIBRAZIL!',
      'es':
          'PARA UNA MEJOR EXPERIENCIA, CREA LA TUYA PROPIA\n¡CUENTA EN AQUIBRAZIL!',
    },
    'f15sp5u0': {
      'pt':
          'CADASTRE-SE AGORA E APROVEITE TODOS OS BENEFÍCIOS EXCLUSIVOS, COMO DESCONTOS ESPECIAIS, CASHBACK E MUITO MAIS! 🚀🎉',
      'en':
          'REGISTER NOW AND ENJOY ALL THE EXCLUSIVE BENEFITS, SUCH AS SPECIAL DISCOUNTS, CASHBACK AND MUCH MORE! 🚀🎉',
      'es':
          'REGÍSTRATE AHORA Y DISFRUTA DE TODOS LOS BENEFICIOS EXCLUSIVOS, COMO DESCUENTOS ESPECIALES, CASHBACK Y MUCHO MÁS! 🚀🎉',
    },
    'ibngrza2': {
      'pt': 'CRIAR CONTA',
      'en': 'CREATE ACCOUNT',
      'es': 'CREAR UNA CUENTA',
    },
  },
  // containerAdicionais
  {
    '1c3k1wdv': {
      'pt': '+ ',
      'en': '+ \$',
      'es': '+ \$',
    },
  },
  // languageUpdated
  {
    'ezrbbmqi': {
      'pt': 'IDIOMA ATUALIZADO!',
      'en': 'LANGUAGE UPDATED!',
      'es': '¡IDIOMA ACTUALIZADO!',
    },
    'lbkpkohi': {
      'pt':
          'O idioma do aplicativo foi atualizado, para retornar ao idioma anterior selecione configurações.',
      'en':
          'The application language has been updated, to return to the previous language select settings.',
      'es':
          'Se ha actualizado el idioma de la aplicación, para volver a la configuración de selección de idioma anterior.',
    },
  },
  // containItemOtherCompany
  {
    '2nukroqg': {
      'pt': 'VOCÊ SÓ PODE ADICIONAR UM ITEM POR VEZ.',
      'en': 'YOU CAN ONLY ADD ONE ITEM AT A TIME.',
      'es': 'SOLO PUEDES AGREGAR UN ARTÍCULO A LA VEZ.',
    },
    '76suzm44': {
      'pt': 'DESEJA ESVAZIAR A SACOLA E ADICIONAR ESTE ITEM?',
      'en': 'DO YOU WANT TO EMPTY THE BAG AND ADD THIS ITEM?',
      'es': '¿QUIERES VACIAR LA BOLSA Y AÑADIR ESTE ARTÍCULO?',
    },
    'sm5neen2': {
      'pt': 'ESVAZIAR SACOLA E ADICIONAR',
      'en': 'EMPTY BAG AND ADD',
      'es': 'BOLSA VACÍA Y AÑADIR',
    },
    'fjkppiia': {
      'pt': 'CANCELAR',
      'en': 'CANCEL',
      'es': 'CANCELAR',
    },
  },
  // paymentMethodError
  {
    'l60llzdy': {
      'pt': 'FORMA DE PAGAMENTO INDISPONÍVEL',
      'en': 'PAYMENT METHOD UNAVAILABLE',
      'es': 'FORMA DE PAGO NO DISPONIBLE',
    },
    'kvd5piw0': {
      'pt':
          'PARECE QUE O SEU CARTÃO NÃO ESTÁ LIBERADO PARA ESSA TRANSAÇÃO. PARA CONTINUAR, ESCOLHA OUTRO MÉTODO DE PAGAMENTO OU ENTRE EM CONTATO COM O BANCO.',
      'en':
          'IT APPEARS THAT YOUR CARD IS NOT ALLOWED FOR THIS TRANSACTION. TO CONTINUE, CHOOSE ANOTHER PAYMENT METHOD OR CONTACT YOUR BANK.',
      'es':
          'PARECE QUE SU TARJETA NO ESTÁ PERMITIDA PARA ESTA TRANSACCIÓN. PARA CONTINUAR, ELIGE OTRO MÉTODO DE PAGO O CONTACTA CON TU BANCO.',
    },
    '2ai53mku': {
      'pt': 'Não aprovado',
      'en': 'Not approved',
      'es': 'No aprobado',
    },
    'f8jb15zo': {
      'pt': 'ALTERAR FORMA DE PAGAMENTO',
      'en': 'CHANGE PAYMENT METHOD',
      'es': 'CAMBIAR FORMA DE PAGO',
    },
  },
  // companyClosed
  {
    'zk4662zn': {
      'pt': 'Está loja abre hoje às',
      'en': 'This store opens today at',
      'es': 'Esta tienda abre hoy a las',
    },
    'rdxlcoja': {
      'pt': '18:00',
      'en': '18:00',
      'es': '18:00',
    },
    '8w53j6rf': {
      'pt':
          'Mas você pode olhar o cardápio à vontade e voltar quando a loja estiver aberta.',
      'en':
          'But you can look at the menu at your leisure and come back when the store is open.',
      'es':
          'Pero puedes mirar el menú cuando quieras y volver cuando la tienda esté abierta.',
    },
    'm4jf27so': {
      'pt': 'OK, ENTENDI',
      'en': 'OK, I UNDERSTAND',
      'es': 'Está bien, lo entiendo.',
    },
  },
  // emptyListRating
  {
    '6yl3gjr3': {
      'pt': 'Esta empresa ainda não possui avaliações.',
      'en': 'This company has no reviews yet.',
      'es': 'Esta empresa aún no tiene reseñas.',
    },
  },
  // selectService
  {
    '1n74gy2b': {
      'pt': 'RESERVAR',
      'en': 'BOOK',
      'es': 'LIBRO',
    },
  },
  // cartReviewService
  {
    'ws7f8437': {
      'pt': 'REVISE SEU AGENDAMENTO',
      'en': 'REVIEW YOUR SCHEDULE',
      'es': 'REVISA TU HORARIO',
    },
    'xg8idivt': {
      'pt': 'Local do serviço',
      'en': '',
      'es': '',
    },
    'zh8iwz0h': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZOU',
      'en': 'WITH AQUIPASS YOU SAVED',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'k5pbldpt': {
      'pt': 'GANHOU 3% DE CASHBACK',
      'en': 'EARNED 3% CASHBACK',
      'es': 'GANÓ UN 3% DE REEMBOLSO EN EFECTIVO',
    },
    'ax49hnfk': {
      'pt': ' ••••',
      'en': '••••',
      'es': '••••',
    },
    'vuvxatqn': {
      'pt': 'Mastercard ••••1234',
      'en': 'Mastercard ••••1234',
      'es': 'Tarjeta MasterCard ••••1234',
    },
    'n7a5pehm': {
      'pt': 'FAZER AGENDAMENTO',
      'en': 'MAKE AN APPOINTMENT',
      'es': 'PEDIR HORA',
    },
  },
  // cuponsItemsCashV
  {
    'ck2uio3l': {
      'pt': 'McDonald\'s',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    'elq25qbh': {
      'pt': 'Leve 2 Pague 1',
      'en': 'Buy 2 Pay 1',
      'es': 'Compre 2 y pague 1',
    },
    'dylxh0my': {
      'pt': 'Qualquer item',
      'en': 'Any item',
      'es': 'Cualquier articulo',
    },
    'e4slho56': {
      'pt': 'Até 22/11/2024',
      'en': 'Until 11/22/2024',
      'es': 'Hasta el 22/11/2024',
    },
    'k2udabln': {
      'pt': 'TROCAR',
      'en': 'TO REPLACE',
      'es': 'PARA REEMPLAZAR',
    },
    'mkw8jqnc': {
      'pt': '\$1.50',
      'en': '\$1.50',
      'es': '\$1,50',
    },
  },
  // cart5
  {
    'zz6tg1cz': {
      'pt': 'REVISE SEU PEDIDO',
      'en': 'REVIEW YOUR ORDER',
      'es': 'REVISA TU PEDIDO',
    },
    'x6rr7zw5': {
      'pt': 'COM AQUIPASS VOCÊ ECONOMIZOU',
      'en': 'WITH AQUIPASS YOU SAVED',
      'es': 'CON AQUIPASS AHORRAS',
    },
    'hjdvjqtf': {
      'pt': 'GANHOU 3% DE CASHBACK',
      'en': 'EARNED 3% CASHBACK',
      'es': 'GANÓ UN 3% DE REEMBOLSO EN EFECTIVO',
    },
    'bq7o6bvh': {
      'pt': ' ••••',
      'en': '••••',
      'es': '••••',
    },
    '33hj0o6u': {
      'pt': 'Mastercard ••••1234',
      'en': 'Mastercard ••••1234',
      'es': 'Tarjeta MasterCard ••••1234',
    },
    'q0fi4ypv': {
      'pt': 'FAZER PEDIDO',
      'en': 'PLACE ORDER',
      'es': 'HACER PEDIDO',
    },
  },
  // companyCard
  {
    '5is5i0ep': {
      'pt': 'HALLANDALE BEACH • 5.1 MILHAS',
      'en': 'HALLANDALE BEACH • 5.1 MILES',
      'es': 'PLAYA HALLANDALE • 5,1 MILLAS',
    },
    '1mq6vr4i': {
      'pt': ' MILHAS',
      'en': 'MILES',
      'es': 'MILLAS',
    },
    'vd4jfrs0': {
      'pt': 'HALLANDALE BEACH • 5.1 MILHAS',
      'en': 'HALLANDALE BEACH • 5.1 MILES',
      'es': 'PLAYA HALLANDALE • 5,1 MILLAS',
    },
  },
  // ads
  {
    '5g4ehijw': {
      'pt': 'anúncio',
      'en': 'announcement',
      'es': 'anuncio',
    },
    'lsw09fyz': {
      'pt': 'ENTREGA GRÁTIS',
      'en': 'FREE DELIVERY',
      'es': 'ENTREGA GRATUITA',
    },
  },
  // azul-step3
  {
    'rsmkv5o3': {
      'pt': 'QUANTOS PONTOS VOCÊ QUER RESGATAR PARA O AZUL FIDELIDADE?',
      'en': 'HOW MANY POINTS DO YOU WANT TO REDEEM FOR AZUL FIDELIDADE?',
      'es': '¿CUÁNTOS PUNTOS QUIERES CANJEAR POR AZUL FIDELIDADE?',
    },
    'm2ba7z5x': {
      'pt': 'QUANTIDADE DE PONTOS',
      'en': 'NUMBER OF POINTS',
      'es': 'NÚMERO DE PUNTOS',
    },
    'j3do4k1u': {
      'pt': 'Digite apenas números',
      'en': 'Enter numbers only',
      'es': 'Introduzca sólo números',
    },
    'z9xn4cm2': {
      'pt': 'VOCÊ PODE RESGATAR ATÉ ',
      'en': 'YOU CAN REDEEM UP TO',
      'es': 'PUEDES CANJEAR HASTA',
    },
    'tm5wl1ii': {
      'pt': ' PONTOS.',
      'en': 'POINTS.',
      'es': 'AGUJAS.',
    },
    '1c60bt8e': {
      'pt': 'MÍNIMO ',
      'en': 'YOU CAN REDEEM UP TO',
      'es': 'PUEDES CANJEAR HASTA',
    },
    '9i82b0aj': {
      'pt': '1000',
      'en': '',
      'es': 'CPF NO VÁLIDO',
    },
    'cl7afvx2': {
      'pt': ' PONTOS.',
      'en': 'POINTS.',
      'es': 'AGUJAS.',
    },
    '7ze26ytt': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'qissgvy4': {
      'pt': 'VOLTAR',
      'en': 'TO GO BACK',
      'es': 'Para volver atrás',
    },
  },
  // temp4-appointment
  {
    '24rqi72g': {
      'pt': 'INFORMAÇÃO COMPLEMENTAR',
      'en': 'ADDITIONAL INFORMATION',
      'es': 'INFORMACIÓN ADICIONAL',
    },
    '4v465xh3': {
      'pt': 'ALGUM COMENTÁRIO',
      'en': 'ANY COMMENTS',
      'es': '¿CUALQUIER COMENTARIO?',
    },
    'n5thg3j6': {
      'pt': '',
      'en': 'MESSAGE TO THE COMPANY (OPTIONAL)',
      'es': 'MENSAJE A LA EMPRESA (OPCIONAL)',
    },
    'mvxkihg7': {
      'pt': 'EX: NÃO PRECISA LAVAR.',
      'en': '',
      'es': '',
    },
    'kw1lxwqx': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
  },
  // containItemServiceCart
  {
    '4j8sm8iq': {
      'pt': 'VOCÊ JÁ POSSUI UM HORÁRIO SELECIONADO!',
      'en': 'YOU ALREADY HAVE A SCHEDULE SELECTED!',
      'es': '¡YA TIENES UN HORARIO SELECCIONADO!',
    },
    'ak3rqmew': {
      'pt':
          'SE DESEJAR, ESCOLHA UM NOVO HORÁRIO OU CONTINUE COM A OPÇÃO ATUAL.',
      'en':
          'IF YOU WISH, CHOOSE A NEW TIME OR CONTINUE WITH THE CURRENT OPTION.',
      'es':
          'SI LO DESEAS, ELIGE UN NUEVO HORARIO O CONTINÚA CON LA OPCIÓN ACTUAL.',
    },
    'lm8hrgcu': {
      'pt': 'ATUALIZAR HORARIO SELECIONADO',
      'en': 'UPDATE SELECTED TIME',
      'es': 'ACTUALIZAR HORA SELECCIONADA',
    },
    'c2alhciy': {
      'pt': 'ADICIONAR HORÁRIO',
      'en': 'ADD SCHEDULE',
      'es': 'AGREGAR HORARIO',
    },
  },
  // filterDiscount
  {
    'vddrehpx': {
      'pt': 'MAIOR QUE ',
      'en': 'GREATER THAN',
      'es': 'MÁS QUE',
    },
    '1zw3cgj0': {
      'pt': '%',
      'en': '%',
      'es': '%',
    },
    '0jz7oai3': {
      'pt': '5%',
      'en': '5%',
      'es': '5%',
    },
    'qlwgye28': {
      'pt': '10%',
      'en': '10%',
      'es': '10%',
    },
    '30rk1hli': {
      'pt': '15%',
      'en': '15%',
      'es': '15%',
    },
    'ruk9dall': {
      'pt': '+20%',
      'en': '+20%',
      'es': '+20%',
    },
    'l6mpcyg3': {
      'pt': 'APLICAR FILTRO',
      'en': 'APPLY FILTER',
      'es': 'APLICAR FILTRO',
    },
  },
  // alertMandatoryGroups
  {
    '5o7mh3tt': {
      'pt': 'OS COMPLEMENTOS DO GRUPO: ',
      'en': 'GROUP COMPLEMENTS:',
      'es': 'COMPLEMENTOS DEL GRUPO:',
    },
    'qmqbkboh': {
      'pt':
          ' SÃO OBRIGATÓRIO(S), POR FAVOR, SELECIONE 1 OU MAIS PARA CONTINUAR.',
      'en': 'ARE MANDATORY, PLEASE SELECT 1 OR MORE TO CONTINUE.',
      'es': 'SON OBLIGATORIOS, POR FAVOR SELECCIONE 1 O MÁS PARA CONTINUAR.',
    },
    'ebe5evq7': {
      'pt':
          'O COMPLEMENTO DO [NOME GRUPO] É/SÃO OBRIGATÓRIO(S), POR FAVOR, SELECIONE 1 OU MAIS PARA CONTINUAR.',
      'en':
          '[GROUP NAME] ADDITION IS/ARE MANDATORY, PLEASE SELECT 1 OR MORE TO CONTINUE.',
      'es':
          'LA ADICIÓN DE [NOMBRE DEL GRUPO] ES OBLIGATORIA, SELECCIONE 1 O MÁS PARA CONTINUAR.',
    },
    'tfnw0u5f': {
      'pt': 'OS COMPLEMENTOS DOS GRUPOS ',
      'en': 'THE COMPLEMENTS OF THE GROUPS',
      'es': 'LOS COMPLEMENTOS DE LOS GRUPOS',
    },
    '6yphsxzu': {
      'pt':
          ' SÃO OBRIGATÓRIO(S), POR FAVOR, SELECIONE 1 OU MAIS PARA CONTINUAR.',
      'en': 'ARE MANDATORY, PLEASE SELECT 1 OR MORE TO CONTINUE.',
      'es': 'SON OBLIGATORIOS, POR FAVOR SELECCIONE 1 O MÁS PARA CONTINUAR.',
    },
    'tjgs7mbn': {
      'pt':
          'O COMPLEMENTO DO [NOME GRUPO] É/SÃO OBRIGATÓRIO(S), POR FAVOR, SELECIONE 1 OU MAIS PARA CONTINUAR.',
      'en':
          '[GROUP NAME] ADDITION IS/ARE MANDATORY, PLEASE SELECT 1 OR MORE TO CONTINUE.',
      'es':
          'LA ADICIÓN DE [NOMBRE DEL GRUPO] ES OBLIGATORIA, SELECCIONE 1 O MÁS PARA CONTINUAR.',
    },
  },
  // alertSelectAddress
  {
    '52qp9txe': {
      'pt': 'NENHUM ENDEREÇO DE ENTREGA SELECIONADO',
      'en': 'NO SHIPPING ADDRESS SELECTED',
      'es': 'NO HA SELECCIONADO NINGUNA DIRECCIÓN DE ENVÍO',
    },
    'mgwg33wt': {
      'pt': 'PARA CONTINUAR, SELECIONE UM ENDEREÇO DE ENTREGA VÁLIDO. 📍',
      'en': 'TO CONTINUE, PLEASE SELECT A VALID SHIPPING ADDRESS. 📍',
      'es': 'PARA CONTINUAR, SELECCIONE UNA DIRECCIÓN DE ENVÍO VÁLIDA. 📍',
    },
    '386i54pb': {
      'pt': 'MEUS ENDEREÇOS',
      'en': 'MY ADDRESSES',
      'es': 'MIS DIRECCIONES',
    },
  },
  // cancelSchedule
  {
    'm12l0de5': {
      'pt': 'TEM CERTEZA QUE DESEJA CANCELAR ESTE AGENDAMENTO?',
      'en':
          'HELLO, THIS TIME IS NOT AVAILABLE, I WOULD LIKE TO OFFER YOU A NEW ONE',
      'es':
          'HOLA, ESTE TIEMPO NO ESTÁ DISPONIBLE, ME GUSTARÍA OFRECERTE UNO NUEVO',
    },
    'kolunnvp': {
      'pt': 'NÃO, DESEJO AGUARDAR',
      'en': 'CANCEL APPOINTMENT',
      'es': 'CANCELAR CITA',
    },
    'mxsig6qj': {
      'pt': 'SIM, CANCELAR',
      'en': 'TO ACCEPT',
      'es': 'ACEPTAR',
    },
  },
  // AvaliarAtendimento
  {
    'ikqi3tub': {
      'pt': 'AVALIE O SEU ATENDIMENTO',
      'en': 'RATE YOUR SERVICE',
      'es': 'CALIFICA TU SERVICIO',
    },
    'rts2wmfg': {
      'pt':
          'Sua opinião é muito importante para continuarmos melhorando nosso suporte!',
      'en':
          'Your opinion is very important for us to continue improving our support!',
      'es':
          '¡Tu opinión es muy importante para que podamos seguir mejorando nuestro soporte!',
    },
    'j27blisd': {
      'pt': 'SEU PROBLEMA FOI RESOLVIDO?',
      'en': 'HAS YOUR PROBLEM BEEN SOLVED?',
      'es': '¿SE HA RESUELTO SU PROBLEMA?',
    },
    'sle2etx6': {
      'pt': 'SIM',
      'en': 'YES',
      'es': 'SÍ',
    },
    '809xcbr7': {
      'pt': 'NÃO',
      'en': 'NO',
      'es': 'NO',
    },
    'wjzss68z': {
      'pt': 'AVALIE O ATENDIMENTO DO CHAT',
      'en': 'RATE THE CHAT SERVICE',
      'es': 'CALIFICA EL SERVICIO DE CHAT',
    },
    'mb2fkt3e': {
      'pt': 'DEIXE AQUI SEU COMENTÁRIO',
      'en': 'LEAVE YOUR COMMENT HERE',
      'es': 'DEJA TU COMENTARIO AQUI',
    },
    'twosnotx': {
      'pt': 'AVALIAR',
      'en': 'TO ASSESS',
      'es': 'PARA EVALUAR',
    },
    'ly5xk71f': {
      'pt': 'SAIR SEM AVALIAR',
      'en': 'LEAVE WITHOUT EVALUATION',
      'es': 'SALIR SIN EVALUACIÓN',
    },
  },
  // codeSucess
  {
    '015wv640': {
      'pt': 'CÓDIGO VERICADO!',
      'en': 'CODE VERIFIED!',
      'es': '¡CÓDIGO VERIFICADO!',
    },
    't83vlukq': {
      'pt':
          'SEU CÓDIGO FOI VERIFICADO COM SUCESSO, AVANCE PARA FINALIZAR SEU CADASTRO.',
      'en':
          'YOUR CODE HAS BEEN VERIFIED SUCCESSFULLY, PROCEED TO FINALIZE YOUR REGISTRATION.',
      'es':
          'SU CÓDIGO HA SIDO VERIFICADO EXITOSAMENTE, PROCEDA A FINALIZAR SU REGISTRO.',
    },
  },
  // cartCompanyClosed
  {
    '8r2f6fs7': {
      'pt':
          'A LOJA FECHOU.\n\nVERIFIQUE O HORÁRIO DE FUNCIONAMENTO E RETORNE EM OUTRO MOMENTO PARA REALIZAR SEU PEDIDO.',
      'en':
          'THE STORE IS CLOSED.\n\nCHECK THE OPENING HOURS AND COME BACK AT A ANOTHER TIME TO PLACE YOUR ORDER.',
      'es':
          'LA TIENDA HA CERRADO.\n\nCONSULTA EL HORARIO DE APERTURA Y VUELVE EN OTRO HORA PARA REALIZAR TU PEDIDO.',
    },
  },
  // companyShortly
  {
    '6nihf87v': {
      'pt': 'ESTA EMPRESA AINDA NÃO ESTA DISPONIVEL',
      'en': 'NO SHIPPING ADDRESS SELECTED',
      'es': 'NO HA SELECCIONADO NINGUNA DIRECCIÓN DE ENVÍO',
    },
    '8ydwya6p': {
      'pt':
          'FALTA POUCO! EM BREVE VOCÊ PODERÁ ACESSAR O CARDÁPIO DESTA EMPRESA E FAZER SEUS PEDIDOS COM FACILIDADE.',
      'en': 'TO CONTINUE, PLEASE SELECT A VALID SHIPPING ADDRESS. 📍',
      'es': 'PARA CONTINUAR, SELECCIONE UNA DIRECCIÓN DE ENVÍO VÁLIDA. 📍',
    },
  },
  // Calendar
  {
    '848tczsd': {
      'pt': 'SELECIONAR DATAS',
      'en': 'SELECT DATES',
      'es': 'SELECCIONAR FECHAS',
    },
    'l7da56sm': {
      'pt': 'RETIRADA',
      'en': 'WITHDRAWAL',
      'es': 'RETIRO',
    },
    'sj6grmy8': {
      'pt': 'ENTREGA',
      'en': 'DELIVERY',
      'es': 'ENTREGA',
    },
    '8lcsqugt': {
      'pt': 'D',
      'en': 'D',
      'es': 'D',
    },
    'xcrnxl4x': {
      'pt': 'S',
      'en': 'S',
      'es': 'S',
    },
    'wn06qvyb': {
      'pt': 'T',
      'en': 'T',
      'es': 'yo',
    },
    '3qo8uvhu': {
      'pt': 'Q',
      'en': 'Q',
      'es': 'Q',
    },
    '23tns01i': {
      'pt': 'Q',
      'en': 'Q',
      'es': 'Q',
    },
    'lcwpeqr2': {
      'pt': 'S',
      'en': 'S',
      'es': 'S',
    },
    'gz83cdc4': {
      'pt': 'S',
      'en': 'S',
      'es': 'S',
    },
    'wb4rkifb': {
      'pt': 'LIMPAR',
      'en': 'TO CLEAN',
      'es': 'PARA LIMPIAR',
    },
    'vjjngssi': {
      'pt': 'QUANTIDADE DE DIAS',
      'en': 'NUMBER OF DAYS',
      'es': 'NÚMERO DE DÍAS',
    },
    '99tq7xz3': {
      'pt': 'SUB TOTAL',
      'en': 'SUB TOTAL',
      'es': 'SUB TOTAL',
    },
    'ic8fyord': {
      'pt': 'TAXAS',
      'en': 'FEES',
      'es': 'HONORARIOS',
    },
    'fm29la1s': {
      'pt': 'TOTAL',
      'en': 'TOTAL',
      'es': 'TOTAL',
    },
  },
  // filterRating
  {
    'szqgj0ma': {
      'pt': 'MAIOR QUE ',
      'en': 'GREATER THAN',
      'es': 'MÁS QUE',
    },
    'fr9clhz7': {
      'pt': '3',
      'en': '3',
      'es': '3',
    },
    'bpfalpce': {
      'pt': '3.5',
      'en': '3.5',
      'es': '3.5',
    },
    '8sx77k8i': {
      'pt': '4',
      'en': '4',
      'es': '4',
    },
    'gzahcie3': {
      'pt': '4.5',
      'en': '4.5',
      'es': '4.5',
    },
    'p9up0ryp': {
      'pt': '5',
      'en': '5',
      'es': '5',
    },
    'lpo0zo9w': {
      'pt': 'APLICAR FILTRO',
      'en': 'APPLY FILTER',
      'es': 'APLICAR FILTRO',
    },
  },
  // paymentMethodNickname
  {
    't97e8cw6': {
      'pt': 'COMO QUER CHAMAR ESTE CARTÃO?',
      'en': 'WHAT DO YOU WANT TO CALL THIS CARD?',
      'es': '¿CÓMO QUIERES LLAMAR A ESTA TARJETA?',
    },
    'if4ack3r': {
      'pt':
          'O APELIDO É A ÚNICA INFORMAÇÃO QUE VOCÊ PODE ALTERAR NO SEU CARTÃO.',
      'en': 'THE NICKNAME IS THE ONLY INFORMATION YOU CAN CHANGE ON YOUR CARD.',
      'es':
          'EL APODO ES LA ÚNICA INFORMACIÓN QUE PUEDES CAMBIAR EN TU TARJETA.',
    },
    'k22im52x': {
      'pt': 'INSIRA O APELIDO DO CARTÃO',
      'en': 'ENTER CARD NICKNAME',
      'es': 'INGRESE EL APODO DE LA TARJETA',
    },
    'luz5il4u': {
      'pt': 'SALVAR APELIDO',
      'en': 'SAVE NICKNAME',
      'es': 'GUARDAR APODO',
    },
    'h4knzg0d': {
      'pt': 'CANCELAR',
      'en': 'CANCEL',
      'es': 'CANCELAR',
    },
  },
  // balanceCashback
  {
    'h477xpdu': {
      'pt': 'SALDO ATUAL',
      'en': 'CURRENT BALANCE',
      'es': 'SALDO ACTUAL',
    },
    'qecc4hfv': {
      'pt': 'EXTRATO',
      'en': 'ACCESS STATEMENT',
      'es': 'DECLARACIÓN DE ACCESO',
    },
    'fgygepqu': {
      'pt': 'PRODUTOS',
      'en': 'PRODUCTS',
      'es': 'PRODUCTOS',
    },
    'oc9lkgxz': {
      'pt': 'PONTOS AZUL',
      'en': 'BLUE DOTS',
      'es': 'PUNTOS AZULES',
    },
  },
  // adsCompany
  {
    '122daq69': {
      'pt': 'anúncio',
      'en': 'announcement',
      'es': 'anuncio',
    },
  },
  // codeInvalid
  {
    'hgvi1jhw': {
      'pt': 'CÓDIGO INVÁLIDO!',
      'en': 'INVALID CODE!',
      'es': '¡CÓDIGO INVÁLIDO!',
    },
    'gfcb7gqr': {
      'pt':
          'SEU CÓDIGO FOI VERIFICADO ESTA INCORRETO VERIFIQUE OU ENVIE NOVAMENTE.',
      'en': 'YOUR CODE HAS BEEN VERIFIED IT IS INCORRECT CHECK OR SEND AGAIN.',
      'es':
          'SU CÓDIGO HA SIDO VERIFICADO ES INCORRECTO VERIFIQUE O ENVÍE DE NUEVO.',
    },
  },
  // orderHelp
  {
    'ysoqs9rm': {
      'pt': 'AJUDA COM O PEDIDO',
      'en': 'HELP WITH THE ORDER',
      'es': 'AYUDA CON EL PEDIDO',
    },
    'umiue761': {
      'pt':
          'SELECIONE UMA DAS OPÇÕES PARA QUE POSSAMOS LHE AJUDAR COM O SEU PEDIDO.',
      'en': 'SELECT ONE OF THE OPTIONS SO WE CAN HELP YOU WITH YOUR ORDER.',
      'es':
          'SELECCIONA UNA DE LAS OPCIONES PARA QUE PODAMOS AYUDARTE CON TU PEDIDO.',
    },
    'ozw9vqwu': {
      'pt': 'PROBLEMAS COM O PEDIDO',
      'en': 'PROBLEMS WITH THE ORDER',
      'es': 'PROBLEMAS CON EL PEDIDO',
    },
    '86ptcfnr': {
      'pt': 'PRODUTO CHEGOU FRIO',
      'en': 'PRODUCT ARRIVED COLD',
      'es': 'EL PRODUCTO LLEGÓ FRÍO',
    },
    '68sti7ax': {
      'pt': 'PRODUTO ERRADO',
      'en': 'WRONG PRODUCT',
      'es': 'PRODUCTO INCORRECTO',
    },
    'vt5nfjue': {
      'pt': 'PRODUTO INCOMPLETO',
      'en': 'INCOMPLETE PRODUCT',
      'es': 'PRODUCTO INCOMPLETO',
    },
    'i700d7jy': {
      'pt': 'PRODUTO DANIFICADO',
      'en': 'DAMAGED PRODUCT',
      'es': 'PRODUCTO DAÑADO',
    },
    'cuijow04': {
      'pt': 'ATRASO NA ENTREGA',
      'en': 'DELAY IN DELIVERY',
      'es': 'RETRASO EN ENTREGA',
    },
    'ot2nw1x1': {
      'pt': 'OUTRO',
      'en': 'OTHER',
      'es': 'OTRO',
    },
  },
  // tradeCashForAzulPoints
  {
    'br742m8l': {
      'pt': 'Economize trocando seu \nsaldo por ',
      'en': 'Save by exchanging your\nbalance for',
      'es': 'Ahorra intercambiando tu \nequilibrio por',
    },
    '4mk3j6bq': {
      'pt': 'Pontos Azul',
      'en': ' Blue Dots',
      'es': ' Puntos azules',
    },
    'sz4zc6m7': {
      'pt': '.',
      'en': '.',
      'es': '.',
    },
    'rjvy5b96': {
      'pt': 'Hello World',
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    'uksp5x6s': {
      'pt': 'APROVEITAR',
      'en': 'TO ENJOY',
      'es': 'PARA DISFRUTAR',
    },
  },
  // orderRating
  {
    '8zyulgpb': {
      'pt': 'AVALIAR PEDIDO',
      'en': 'EVALUATE ORDER',
      'es': 'EVALUAR ORDEN',
    },
    'cb6szzfh': {
      'pt': 'ESCOLHA DE 1  A 5 ESTRELAS PARA CLASSIFICAR',
      'en': 'CHOOSE 1 TO 5 STARS TO RATE',
      'es': 'ELIGE DE 1 A 5 ESTRELLAS PARA CALIFICAR',
    },
    't7x94050': {
      'pt': 'Do que mais você gostou?',
      'en': '',
      'es': '',
    },
    'db21u9dg': {
      'pt': 'COMIDA SABOROSA',
      'en': '',
      'es': '',
    },
    'ltnc979n': {
      'pt': 'BEM TEMPERADA',
      'en': '',
      'es': '',
    },
    'izp1mw96': {
      'pt': 'BOA APARÊNCIA',
      'en': '',
      'es': '',
    },
    'rayc5y32': {
      'pt': 'NO PONTO CERTO',
      'en': '',
      'es': '',
    },
    'jkveui23': {
      'pt': 'BONS INGREDIENTES',
      'en': '',
      'es': '',
    },
    'njh0wnpn': {
      'pt': 'DEIXE UM COMENTÁRIO',
      'en': 'LEAVE A COMMENT',
      'es': 'DEJA UN COMENTARIO',
    },
    '3pliobim': {
      'pt': 'NOS CONTE O QUE ACHOU DO SEU PEDIDO (OPCIONAL)',
      'en': 'TELL US WHAT YOU THOUGHT OF YOUR ORDER (OPTIONAL)',
      'es': 'DÍGANOS QUÉ LE PARECIÓ DE SU PEDIDO (OPCIONAL)',
    },
    'l6qexh1x': {
      'pt': 'ENVIAR AVALIAÇÃO',
      'en': 'SUBMIT REVIEW',
      'es': 'ENVIAR RESEÑA',
    },
  },
  // benefits
  {
    'kuxiqiua': {
      'pt': 'BENEFÍCIOS AQUIPASS:',
      'en': 'AQUIPASS BENEFITS:',
      'es': 'BENEFICIOS DE AQUIPASS:',
    },
    '3wp224gg': {
      'pt': 'DESCONTOS DE ATÉ 50% ',
      'en': 'DISCOUNTS UP TO 50%',
      'es': 'DESCUENTOS HASTA EL 50%',
    },
    'yspc56if': {
      'pt': 'EM PRODUTOS E SERVIÇOS.',
      'en': 'IN PRODUCTS AND SERVICES.',
      'es': 'EN PRODUCTOS Y SERVICIOS.',
    },
    '7un0lbbw': {
      'pt': '3% DE CASHBACK ',
      'en': '3% CASHBACK',
      'es': '3% DE REEMBOLSO EN EFECTIVO',
    },
    'g4zn4aq3': {
      'pt': 'EM QUALQUER COMPRA NO APP.',
      'en': 'WITH ANY IN-APP PURCHASE.',
      'es': 'CON CUALQUIER COMPRA DENTRO DE LA APLICACIÓN.',
    },
    'k0vuevak': {
      'pt': 'DESCONTOS EXCLUSIVOS ',
      'en': 'EXCLUSIVE DISCOUNTS',
      'es': 'DESCUENTOS EXCLUSIVOS',
    },
    '43f7r6wp': {
      'pt': 'EM NOSSA REDE DE PARCEIROS.',
      'en': 'IN OUR PARTNER NETWORK.',
      'es': 'EN NUESTRA RED DE SOCIOS.',
    },
    '4m3zq9go': {
      'pt': 'EXPERIÊNCIA',
      'en': 'EXPERIENCE',
      'es': 'EXPERIENCIA',
    },
    'wav7e1pg': {
      'pt': ' SEM ANÚNCIOS.',
      'en': 'NO ADS.',
      'es': 'SIN PUBLICIDAD.',
    },
  },
  // deliveryNotAddress
  {
    'nlxy73nw': {
      'pt': 'INFELIZMENTE, ESSA EMPRESA NÃO REALIZA ENTREGAS NA SUA REGIÃO.',
      'en': 'UNFORTUNATELY, THIS COMPANY DOES NOT DELIVER TO YOUR REGION.',
      'es': 'DESAFORTUNADAMENTE ESTA EMPRESA NO REALIZA ENTREGAS EN SU REGIÓN.',
    },
    'tkovrza0': {
      'pt':
          'TENTE OUTRO ENDEREÇO OU EXPLORE ESTABELECIMENTOS QUE ATENDAM SUA LOCALIDADE. 📍',
      'en':
          'TRY ANOTHER ADDRESS OR EXPLORE ESTABLISHMENTS THAT SERVE YOUR LOCATION. 📍',
      'es':
          'PRUEBA OTRA DIRECCIÓN O EXPLORA ESTABLECIMIENTOS QUE SERVIRÁN TU UBICACIÓN. 📍',
    },
  },
  // signup-step3-phone
  {
    'c10we8xf': {
      'pt': '+55',
      'en': '+55',
      'es': '+55',
    },
    'jtk44abu': {
      'pt': 'CELULAR',
      'en': 'CELL PHONE',
      'es': 'TELÉFONO MÓVIL',
    },
  },
  // membershipWelcome
  {
    'hzc9j6gu': {
      'pt': '🎉  BEM-VINDO(A) AO AQUIPASS!',
      'en': '🎉 WELCOME TO AQUIPASS!',
      'es': '🎉¡BIENVENIDO A AQUIPASS!',
    },
    '0xr9r0nl': {
      'pt':
          'APROVEITE TODOS OS BENEFÍCIOS EXCLUSIVOS, COMO CASHBACK, DESCONTOS ESPECIAIS, ACESSO PRIORITÁRIO A OFERTAS E MUITO MAIS! COMECE A ECONOMIZAR E APROVEITAR AGORA MESMO! ✨',
      'en':
          'ENJOY ALL THE EXCLUSIVE BENEFITS, SUCH AS CASHBACK, SPECIAL DISCOUNTS, PRIORITY ACCESS TO OFFERS AND MUCH MORE! START SAVING AND ENJOYING RIGHT NOW! ✨',
      'es':
          '¡DISFRUTA DE TODOS LOS BENEFICIOS EXCLUSIVOS, COMO CASHBACK, DESCUENTOS ESPECIALES, ACCESO PRIORITARIO A OFERTAS Y MUCHO MÁS! ¡EMPIEZA A AHORRAR Y DISFRUTAR AHORA MISMO! ✨',
    },
    'z5osfi1y': {
      'pt': 'COMEÇAR A APROVEITAR',
      'en': 'START ENJOYING',
      'es': 'EMPIEZA A DISFRUTAR',
    },
    'vzy6ieqd': {
      'pt': 'GERENCIAR ASSINATURA',
      'en': 'MANAGE SUBSCRIPTION',
      'es': 'GESTIONAR SUSCRIPCIÓN',
    },
  },
  // azul-step2
  {
    '7ls81ath': {
      'pt': 'DIGITE O SEU CPF',
      'en': 'ENTER YOUR CPF',
      'es': 'INGRESE SU CPF',
    },
    'a3wa0van': {
      'pt': 'DIGITE O MESMO CPF USADO NA SUA CONTA AZUL FIDELIDADE.',
      'en': 'ENTER THE SAME CPF USED IN YOUR AZUL FIDELIDADE ACCOUNT.',
      'es': 'INGRESE EL MISMO CPF UTILIZADO EN SU CUENTA AZUL FIDELIDADE.',
    },
    'zbgchtxl': {
      'pt': 'CPF',
      'en': 'CPF',
      'es': 'CPF',
    },
    '4fns4ptf': {
      'pt': 'Digite apenas números',
      'en': 'Enter numbers only',
      'es': 'Introduzca sólo números',
    },
    'oa629w0k': {
      'pt': 'CPF INVÁLIDO',
      'en': 'INVALID CPF',
      'es': 'CPF NO VÁLIDO',
    },
    'td4u7eyc': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
    'vg5v1a95': {
      'pt': 'VOLTAR',
      'en': 'TO GO BACK',
      'es': 'Para volver atrás',
    },
  },
  // searchCompany
  {
    '3ujidsy0': {
      'pt': 'O QUE DESEJA BUSCAR?',
      'en': 'WHAT DO YOU WANT TO SEARCH FOR?',
      'es': '¿QUÉ QUIERES BUSCAR?',
    },
    '4lei4vvd': {
      'pt': 'TODOS',
      'en': 'ALL',
      'es': 'TODO',
    },
    '0msp8sy4': {
      'pt': 'RECENTES',
      'en': 'RECENT',
      'es': 'RECIENTE',
    },
    'cwdfnk8i': {
      'pt': 'PROCURANDO POR',
      'en': 'LOOKING FOR',
      'es': 'BUSCANDO',
    },
    'bay1ze6s': {
      'pt': 'SAGRADO CAFÉ',
      'en': 'SACRED COFFEE',
      'es': 'CAFÉ SAGRADO',
    },
    'choain9d': {
      'pt': 'RESTAURANTES',
      'en': 'RESTAURANTS',
      'es': 'RESTAURANTES',
    },
    'msfsleta': {
      'pt': 'PAPA JOHNS',
      'en': 'POPE JOHNS',
      'es': 'PAPA JUAN',
    },
    'p8upqovt': {
      'pt': 'PIZZARIA',
      'en': 'PIZZERIA',
      'es': 'PIZZERÍA',
    },
    '744s8kpl': {
      'pt': 'McDONALD\'S',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    '5fxfxu4n': {
      'pt': 'MERCADO',
      'en': 'MARKET',
      'es': 'MERCADO',
    },
    'ipkc3g7q': {
      'pt': 'McDONALD\'S',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    'gg22gw1t': {
      'pt': 'MERCADO',
      'en': 'MARKET',
      'es': 'MERCADO',
    },
    's65gyw8m': {
      'pt': 'McDONALD\'S',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    'wj7d06kc': {
      'pt': 'MERCADO',
      'en': 'MARKET',
      'es': 'MERCADO',
    },
    'ynjpzjt0': {
      'pt': 'McDONALD\'S',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    '9zyvep7k': {
      'pt': 'MERCADO',
      'en': 'MARKET',
      'es': 'MERCADO',
    },
    'dulyf65v': {
      'pt': 'McDONALD\'S',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    'oxvcfk41': {
      'pt': 'MERCADO',
      'en': 'MARKET',
      'es': 'MERCADO',
    },
    'hfxp7pk9': {
      'pt': 'McDONALD\'S',
      'en': 'McDonald\'s',
      'es': 'McDonald\'s',
    },
    '3bymbu49': {
      'pt': 'MERCADO',
      'en': 'MARKET',
      'es': 'MERCADO',
    },
  },
  // searchDefault
  {
    'wk32krxk': {
      'pt': 'Buscar por produtos e cupons...',
      'en': 'Search for products and coupons...',
      'es': 'Buscar productos y cupones...',
    },
  },
  // cartPriceChanged
  {
    'l0hp3zm6': {
      'pt':
          'A LOJA ALTEROU O VALOR DE ALGUM \nITEM DO SEU PEDIDO. \n\nPOR FAVOR, REVISE O VALOR ATUALIZADO ANTES DE PROSSEGUIR COM A FINALIZAÇÃO DA COMPRA.',
      'en':
          'THE STORE HAS CHANGED THE PRICE OF AN ITEM IN YOUR ORDER. \n\nPLEASE REVIEW THE UPDATED PRICE BEFORE PROCEEDING WITH THE CHECKOUT.',
      'es':
          'LA TIENDA CAMBIÓ EL VALOR DE ALGO \nARTICULO DE SU PEDIDO. \n\nPOR FAVOR REVISE EL VALOR ACTUALIZADO ANTES DE PROCEDER CON EL PAGO.',
    },
    'znqfhcwf': {
      'pt': 'REVISAR',
      'en': 'REVIEW',
      'es': 'REVISAR',
    },
  },
  // cart3
  {
    'q0so8t99': {
      'pt': 'AJUDE NOSSOS AMIGOS ENTREGADORES COM UM VALOR EXTRA',
      'en': 'HELP OUR DELIVERY FRIENDS WITH AN EXTRA VALUE',
      'es': 'AYUDA A NUESTROS AMIGOS DE REPARTO CON UN VALOR EXTRA',
    },
    'ebhsg1pg': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
  },
  // containItemSelectedCart
  {
    'd6hjqny8': {
      'pt': 'ESTE HORÁRIO JÁ ESTÁ SELECIONADO EM SUA SACOLA!',
      'en': 'THIS TIME IS ALREADY SELECTED IN YOUR BAG!',
      'es': '¡ESTA HORA YA ESTÁ SELECCIONADA EN TU BOLSA!',
    },
    'p1ly9yfz': {
      'pt':
          'SELECIONE UM OUTRO HORÁRIO OU VÁ ATÉ SUA SACOLA PARA FINALIZAR SEU AGENDAMENTO.',
      'en':
          'PLEASE SELECT ANOTHER TIME OR GO TO YOUR BAG TO FINALIZE YOUR APPOINTMENT.',
      'es':
          'POR FAVOR SELECCIONE OTRO HORARIO O VAYA A SU BOLSA PARA FINALIZAR SU CITA.',
    },
    '7aqbeh67': {
      'pt': 'IR PARA SACOLA',
      'en': 'GO TO BAG',
      'es': 'IR A LA BOLSA',
    },
    'kuo0cgbd': {
      'pt': 'SELECIONAR OUTRO HORÁRIO',
      'en': 'SELECT ANOTHER TIME',
      'es': 'SELECCIONE OTRO HORARIO',
    },
  },
  // selectFood
  {
    'x97mr0yt': {
      'pt': 'VEGANO',
      'en': 'VEGAN',
      'es': 'VEGANO',
    },
    'emqo5xoe': {
      'pt': 'ZERO LACTOSE',
      'en': 'ZERO LACTOSE',
      'es': 'CERO LACTOSA',
    },
    '2arzygto': {
      'pt': 'NÃO CONTÊM GLUTEN',
      'en': 'GLUTEN-FREE',
      'es': 'SIN GLUTEN',
    },
    'nehxroxg': {
      'pt': ' OPÇÕES',
      'en': 'OPTIONS',
      'es': 'OPCIONES',
    },
    'oy8um6wy': {
      'pt': 'ESCOLHA ATÉ 5 OPÇÕES',
      'en': 'CHOOSE UP TO 5 OPTIONS',
      'es': 'ELIGE HASTA 5 OPCIONES',
    },
    'm0bsq612': {
      'pt': 'OBRIGATÓRIO',
      'en': 'MANDATORY',
      'es': 'OBLIGATORIO',
    },
    'mrzxm9g4': {
      'pt': 'ADICIONAR',
      'en': 'TO ADD',
      'es': 'PARA AGREGAR',
    },
  },
  // membershipPlans
  {
    'jyvt4oe1': {
      'pt': 'ESCOLHA SEU PLANO:',
      'en': 'CHOOSE YOUR PLAN:',
      'es': 'ELIGE TU PLAN:',
    },
    '682dz1is': {
      'pt': ' DE DESCONTO',
      'en': 'DISCOUNT',
      'es': 'DESCUENTO',
    },
    'q7lhh1jo': {
      'pt': '10% DE DESCONTO',
      'en': '10% DISCOUNT',
      'es': '10% DE DESCUENTO',
    },
    '2vccd6dh': {
      'pt': 'ANUAL',
      'en': 'ANNUAL',
      'es': 'ANUAL',
    },
    'oiiww22d': {
      'pt': '\$119.90 ',
      'en': '\$119.90',
      'es': '\$119,90',
    },
    '9h0j23yc': {
      'pt': ' por ano (',
      'en': 'per year (',
      'es': 'por año (',
    },
    'tkv6qwxb': {
      'pt': ' por mês)',
      'en': 'per month)',
      'es': 'por mes)',
    },
    '8xpp0nna': {
      'pt': 'Cancele quando quiser',
      'en': 'Cancel anytime',
      'es': 'Cancelar en cualquier momento',
    },
    '11kmf7ty': {
      'pt': 'MENSAL',
      'en': 'MONTHLY',
      'es': 'MENSUAL',
    },
    '19xjii9s': {
      'pt': ' por mês',
      'en': 'per month',
      'es': 'por mes',
    },
    '4qeu9o9i': {
      'pt': 'Cancele quando quiser',
      'en': 'Cancel anytime',
      'es': 'Cancelar en cualquier momento',
    },
    'eurz6m50': {
      'pt': 'COMPRA ÚNICA',
      'en': 'ONE TIME PURCHASE',
      'es': 'COMPRA ÚNICA',
    },
    'fj9swijj': {
      'pt': ' por 30 dias',
      'en': 'for 30 days',
      'es': 'por 30 días',
    },
  },
  // filterCategory
  {
    'rsyg8z2m': {
      'pt': 'SELECIONAR',
      'en': 'SELECT',
      'es': 'SELECCIONAR',
    },
  },
  // membershipWithout
  {
    'dd8bqtw9': {
      'pt': '🎉  BENEFÍCIOS EXCLUSIVOS DO AQUIPASS!',
      'en': '🎉 EXCLUSIVE AQUIPASS BENEFITS!',
      'es': '🎉 ¡BENEFICIOS EXCLUSIVOS AQUIPASS!',
    },
    'frbl0kq0': {
      'pt': 'A PARTIR DE \$8.99 POR MÊS VOCÊ GARANTE:',
      'en': 'FROM \$8.99 PER MONTH YOU GET:',
      'es': 'DESDE \$8.99 AL MES OBTIENES:',
    },
    'paoywoht': {
      'pt': '3% DE CASHBACK EM TODAS AS COMPRAS ELEGÍVEIS.',
      'en': '3% CASHBACK ON ALL ELIGIBLE PURCHASES.',
      'es': '3% DE REEMBOLSO EN EFECTIVO EN TODAS LAS COMPRAS ELEGIBLES.',
    },
    'w906uvoi': {
      'pt': 'DESCONTOS ESPECIAIS EM PRODUTOS E SERVIÇOS\nSELECIONADOS.',
      'en': 'SPECIAL DISCOUNTS ON SELECTED\nPRODUCTS AND SERVICES.',
      'es': 'DESCUENTOS ESPECIALES EN PRODUCTOS Y SERVICIOS\nSELECCIONADO.',
    },
    'xjafz39p': {
      'pt': 'REDE DE PARCEIROS PREMIUM COM VANTAGENS\nEXCLUSIVAS.',
      'en': 'PREMIUM PARTNER NETWORK WITH EXCLUSIVE\nADVANTAGES.',
      'es': 'RED DE SOCIOS PREMIUM CON VENTAJAS\nEXCLUSIVO.',
    },
    'eecd5nyw': {
      'pt': 'ACESSO PRIORITÁRIO A OFERTAS E PROMOÇÕES\nIMPERDÍVEIS.',
      'en': 'PRIORITY ACCESS TO UNMISSABLE OFFERS AND PROMOTIONS.',
      'es': 'ACCESO PRIORITARIO A OFERTAS Y PROMOCIONES\nIMPERDIBLE.',
    },
    'womm2bkm': {
      'pt': 'EXPERIÊNCIA SEM ANÚNCIOS.',
      'en': 'AD-FREE EXPERIENCE.',
      'es': 'EXPERIENCIA SIN PUBLICIDAD.',
    },
    'w5r79mx8': {
      'pt': 'ASSINAR O AQUIPASS E APROVEITAR',
      'en': 'SIGN UP FOR AQUIPASS AND ENJOY',
      'es': 'REGÍSTRATE EN AQUIPASS Y DISFRUTA',
    },
    'kjkcfh6f': {
      'pt': 'AGORA NÃO',
      'en': 'NOT NOW',
      'es': 'AHORA NO',
    },
  },
  // DetalhesDaTransacao
  {
    '7dpiv5kp': {
      'pt': 'DETALHES DA TRANSAÇÃO',
      'en': 'TRANSACTION DETAILS',
      'es': 'DETALLES DE LA TRANSACCIÓN',
    },
    '9qle4cm6': {
      'pt': 'REALIZADA EM 05/11/2024 ÀS 21:35',
      'en': 'HELD ON 11/05/2024 AT 9:35 PM',
      'es': 'CELEBRADA EL 05/11/2024 A LAS 21:35',
    },
    '9u1gxso9': {
      'pt': 'DÉBITO',
      'en': 'DEBIT',
      'es': 'DÉBITO',
    },
    'x1webosz': {
      'pt': '••••1234',
      'en': '••••1234',
      'es': '••••1234',
    },
    'f4e1segn': {
      'pt': 'Burger King - Iguatemi',
      'en': 'Burger King - Iguatemi',
      'es': 'Burger King - Iguatemi',
    },
    '95zafrw0': {
      'pt': 'Agendamento #1234',
      'en': 'Appointment #1234',
      'es': 'Cita #1234',
    },
    'ph5zlzl9': {
      'pt': 'PAGO PELO APP',
      'en': 'PAYMENT BY APP',
      'es': 'PAGO POR APP',
    },
    'fvo2i51s': {
      'pt': 'Valor total',
      'en': 'Total value',
      'es': 'Valor total',
    },
    'pvb9m5h9': {
      'pt': '••••1234',
      'en': '••••1234',
      'es': '••••1234',
    },
    'v4y82g21': {
      'pt': '\$',
      'en': '\$',
      'es': '\$',
    },
    '6bf49dh0': {
      'pt': '119.90',
      'en': '119.90',
      'es': '119,90',
    },
    'whs38ozx': {
      'pt': 'VER DETALHES DO PEDIDO',
      'en': 'VIEW ORDER DETAILS',
      'es': 'VER DETALLES DEL PEDIDO',
    },
    'p1u3vdla': {
      'pt': 'PRECISO DE AJUDA',
      'en': 'I NEED HELP',
      'es': 'NECESITO AYUDA',
    },
  },
  // temp4-product
  {
    'slu8lep2': {
      'pt': 'PRODUTOS DA LOJA',
      'en': 'STORE PRODUCTS',
      'es': 'PRODUCTOS DE LA TIENDA',
    },
    'c0oq2s4q': {
      'pt': 'FIQUE ATENTO!',
      'en': 'STAY TUNED!',
      'es': '¡MANTÉNGANSE AL TANTO!',
    },
    'uapeut7p': {
      'pt':
          'OS HORÁRIOS DE AGENDAMENTO SERÃO SUBMETIDOS À APROVAÇÃO DA EMPRESA E PODEM SER MODIFICADOS.',
      'en':
          'APPOINTMENT TIMES WILL BE SUBMITTED TO THE COMPANY FOR APPROVAL AND MAY BE MODIFIED.',
      'es':
          'LOS HORARIOS DE LAS CITAS SE ENVIARÁN A LA COMPAÑÍA PARA SU APROBACIÓN Y PODRÁN SER MODIFICADOS.',
    },
    'mk7b75fg': {
      'pt': 'BUSCAR PRODUTO...',
      'en': 'SEARCH FOR PRODUCT...',
      'es': 'BUSCAR PRODUCTO...',
    },
    'zdu2ukc6': {
      'pt': 'CONTINUAR',
      'en': 'CONTINUE',
      'es': 'CONTINUAR',
    },
  },
  // paymentMethodSelect
  {
    'axo8gil7': {
      'pt': 'FORMA DE PAGAMENTO',
      'en': 'PAYMENT METHOD',
      'es': 'FORMA DE PAGO',
    },
    'bzbbwesk': {
      'pt': 'MÉTODO DE PAGAMENTO',
      'en': 'PAYMENT METHOD',
      'es': 'FORMA DE PAGO',
    },
    'tir8w0r2': {
      'pt': 'ADICIONAR',
      'en': 'TO ADD',
      'es': 'PARA AGREGAR',
    },
    'oqn5hpkz': {
      'pt': ' ••••',
      'en': '••••',
      'es': '••••',
    },
    'jcbio9dv': {
      'pt': 'Mastercard ••••1234',
      'en': 'Mastercard ••••1234',
      'es': 'Tarjeta MasterCard ••••1234',
    },
    '4vbc4pje': {
      'pt': 'ALTERAR',
      'en': 'TO ALTER',
      'es': 'ALTERAR',
    },
  },
  // address
  {
    'pe1jpzqj': {
      'pt': 'BUSCAR ENDEREÇO E NÚMERO...',
      'en': 'SEARCH FOR ADDRESS AND NUMBER...',
      'es': 'BUSCAR DIRECCIÓN Y NUMERO...',
    },
    't2k2ydpf': {
      'pt': 'Usar localização atual',
      'en': 'Use current location',
      'es': 'Utilice la ubicación actual',
    },
    'fsxmhnxe': {
      'pt': 'EDITAR',
      'en': 'EDIT',
      'es': 'EDITAR',
    },
    '5vscpy87': {
      'pt': 'EXCLUIR',
      'en': 'DELETE',
      'es': 'BORRAR',
    },
  },
  // termsAndHelpCash
  {
    'h3v8fcuc': {
      'pt': 'TERMOS E CONDIÇÕES',
      'en': 'TERMS AND CONDITIONS',
      'es': 'TÉRMINOS Y CONDICIONES',
    },
    'hrsxfx6n': {
      'pt': 'AJUDA',
      'en': 'HELP',
      'es': 'AYUDA',
    },
  },
  // orderCancel
  {
    'iw05aa37': {
      'pt': 'PEDIDO FEITO POR ENGANO',
      'en': 'ORDER MADE BY MISTAKE',
      'es': 'PEDIDO REALIZADO POR ERROR',
    },
    '5nrsdg0k': {
      'pt': 'SOLICITAR CANCELAMENTO',
      'en': 'REQUEST CANCELLATION',
      'es': 'SOLICITUD DE CANCELACIÓN',
    },
    '1akwhcn0': {
      'pt': 'SELECIONAR OUTRO MOTIVO',
      'en': 'SELECT ANOTHER REASON',
      'es': 'SELECCIONE OTRO MOTIVO',
    },
  },
  // Miscellaneous
  {
    '23u2b129': {
      'pt': 'Please select...',
      'en': '',
      'es': '',
    },
    '8rlj4swy': {
      'pt': 'Search for an item...',
      'en': '',
      'es': '',
    },
    'zh1fgx68': {
      'pt': 'TROCAR AGORA',
      'en': '',
      'es': '',
    },
    '41vkry3m': {
      'pt':
          'Para pesquisar empresas nas proximidades este aplicativo requer acesso à sua localização atual.',
      'en':
          'To search for nearby businesses this app requires access to your current location.',
      'es':
          'Para buscar negocios cercanos, esta aplicación requiere acceso a su ubicación actual.',
    },
    'tcy5ux8f': {
      'pt':
          'Nosso aplicativo utiliza tecnologia de biometria para oferecer mais segurança e conveniência no acesso aos seus dados.',
      'en':
          'Our application uses biometric technology to offer more security and convenience when accessing your data.',
      'es':
          'Nuestra aplicación utiliza tecnología biométrica para ofrecer mayor seguridad y comodidad al acceder a tus datos.',
    },
    '83g0dbvh': {
      'pt': '',
      'en':
          'In order to take a picture or video, this app requires permission to access the camera.',
      'es':
          'Para tomar una fotografía o un vídeo, esta aplicación requiere permiso para acceder a la cámara.',
    },
    't0timb05': {
      'pt': '',
      'en':
          'In order to upload data, this app requires permission to access the photo library.',
      'es':
          'Para cargar datos, esta aplicación requiere permiso para acceder a la biblioteca de fotos.',
    },
    'ymwbg6vx': {
      'pt': 'Receber notificação de atualizações sobre seus pedidos',
      'en': '',
      'es': '',
    },
    '6yxjz310': {
      'pt': 'NO',
      'en': '',
      'es': '',
    },
    'y7x618zc': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'tcrnyylt': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '1yb9z9ui': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'l14y548b': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'ov0sfz4f': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'jltzd2zn': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'j7gwillg': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'o8fau6xp': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'mglm9a4f': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'jaxca68j': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '17ll3l5x': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'zl44kn41': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'aadzxveu': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '3jdnqhvk': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'ywggolo8': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'x1zbs32s': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'jrn5vviz': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '72ki993a': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '0umee4fy': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '7zzfodxr': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'wr5a8418': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'q90ndxt4': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'cmi40wlq': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'eclfv69z': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'zww5bbzh': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
