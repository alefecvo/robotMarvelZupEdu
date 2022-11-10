### Sobre
A Stack Mobile RobotFramework te ajudará a configurar ambiente para realizar o desenvolvimento de testes automatizados

### Para importar a stack:

```bash
stk import stack https://github.com/alefecvo/robot-mobile-stackspot.git
```

### Para listar as stacks instaladas:

```bash
stk list stack
```

### Para criar o projeto baseado no template:

```bash
stk create app <nomeprojeto> -t robot-mobile-stackspot/template-mobile-robot
```

### Instalação

1. Visual Code (adicionar extensão - Robot Framework Language Server)
3. Java Development Kit 11
4. Python 3.9 ou superior
5. Android Studio
6. Appium Desktop 1.20.0
9. Node.js
9. Appium Doctor

Obs: 
1. Configurar variáveis de ambiente JAVA_HOME, ANDROID_HOME e PATH
2. Criar devices Android e iOS, subir na máquina
3. Instalar bibliotecas em 'requirements.txt', rodando no terminal: 

```bash
pip3 install -r requirements.txt
```

4. Para executar os testes, basta rodar comando:

```bash
robot -v PLATAFORMA:AND -d ./logs -i login tests
```
