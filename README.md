#  Mentoria QA Automação

Projeto de automação de testes end-to-end utilizando Robot Framework com Selenium, seguindo o padrão Page Object Model (POM).

## 📋 Descrição

Este projeto implementa testes automatizados para validar o fluxo de compra em uma aplicação web, com foco em:
- Login e autenticação de usuários
- Navegação entre páginas de produtos
- Gestão do carrinho de compras

##  Estrutura do Projeto

```
mentoria-qa-aut/
├── resource/                          # Recursos e configurações
│   ├── main.robot                     # Arquivo principal com importações
│   ├── navegador.robot                # Keywords de navegação
│   ├── variable.robot                 # Variáveis globais
│   └── pages/                         # Page Objects
│       ├── loginPage.robot            # Elementos e keywords da página de login
│       ├── produtosPage.robot         # Elementos e keywords da página de produtos
│       └── carrinhoPage.robot         # Elementos e keywords do carrinho
├── tests/                             # Testes
│   └── compras.robot                  # Cenários de teste
└── README.md                          # Este arquivo
```

## 🔧 Pré-requisitos

- **Python** 3.7 ou superior
- **Robot Framework** 4.0 ou superior
- **SeleniumLibrary** para Robot Framework
- **Google Chrome** instalado (ou outro navegador configurado)
- **ChromeDriver** (compatível com a versão do Chrome)

## 📦 Instalação

1. Clone ou baixe o projeto:
```bash
cd mentoria-qa-aut
```

2. Instale as dependências:
```bash
pip install -r requirements.txt
```

Ou instale manualmente:
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

## 🚀 Como Executar os Testes

### Executar todos os testes:
```bash
robot tests/compras.robot
```

### Executar um teste específico:
```bash
robot --test "Cenário 1: Validar fluxo de login" tests/compras.robot
```

### Gerar relatório customizado:
```bash
robot --outputdir results tests/compras.robot
```

## 📝 Variáveis Configuráveis

As seguintes variáveis estão definidas em `resource/variable.robot`:

| Variável | Valor Padrão | Descrição |
|----------|------------|-----------|
| `${URL}` | https://www.saucedemo.com/ | URL da aplicação |
| `${USER}` | standard_user | Usuário para login |
| `${PASS}` | secret_sauce | Senha para login |
| `${BROWSER}` | chrome | Navegador utilizado |

## 🧪 Testes Disponíveis

### Cenário 1: Validar fluxo de login
- **Descrição**: Valida o processo de login e acesso ao sistema
- **Passos**:
  1. Navegar até a página de login
  2. Preencher usuário e senha
  3. Validar sucesso no acesso ao sistema

## 🎯 Padrões Utilizados

### Page Object Model (POM)
Cada página da aplicação possui um arquivo dedicado (`*Page.robot`) contendo:
- Localizadores dos elementos (IDs, XPaths, etc.)
- Keywords para interagir com os elementos
- Validações específicas da página

### BDD (Behavior-Driven Development)
Os testes são escritos em linguagem natural (português) seguindo a estrutura:
- **Dado** (Given) - Contexto inicial
- **Quando** (When) - Ação executada
- **Então** (Then) - Resultado esperado

## 📊 Setup e Teardown

Todos os testes possuem:
- **Test Setup**: Abre o navegador antes de cada teste
- **Test Teardown**: Captura screenshot e fecha o navegador após cada teste

## 🔄 Fluxo de Execução

```
Início
  ↓
Abrir Navegador
  ↓
Executar Teste
  ↓
Capturar Screenshot
  ↓
Fechar Navegador
  ↓
Fim
```

## 📁 Arquivo de Configuração

O arquivo `resource/main.robot` centraliza as importações:
- SeleniumLibrary (para automação web)
- Page Objects (páginas de login, produtos, carrinho)
- Variáveis globais
- Keywords de navegação

## 🛠️ Troubleshooting

### ChromeDriver não encontrado
Certifique-se de que o ChromeDriver está instalado e no PATH do sistema ou baixe a versão correspondente ao seu Chrome.

### Elemento não encontrado
Verifique os localizadores em `resource/pages/*Page.robot` - eles podem ter sido alterados na aplicação.

### Timeout na abertura do navegador
Aumentar o timeout em `Abrir Navegador` em `resource/navegador.robot`:
```robot
Open Browser    ${URL}    ${BROWSER}    timeout=30s
```

## 📚 Recursos Adicionais

- [Documentação Robot Framework](https://robotframework.org/robotframework/)
- [SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/)
- [BDD com Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)

## 👤 Autor

Projeto desenvolvido como material de mentoria em QA Automation.

## 📄 Licença

Este projeto é fornecido como material educacional.

---

**Última atualização**: 28 de janeiro de 2026
