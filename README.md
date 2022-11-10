# robotMarvelZupEdu
Esse projeto foi criado para testes automatizados de Mobile usando Python, Robot Framework para projeto ZupEdu.

## Dependências

#### Uso

1. Visual Code (adicionar extensão - Robot Framework Language Server)
2. Instalar Java Development Kit 11 (JDK 11)
3. Java Development Kit 11
4. Python 3.9 ou superior
5. Android Studio
6. Appium Desktop 1.22-3.4
7. Node.js
8. Appium Doctor

Obs: 
1. Configurar variáveis de ambiente JAVA_HOME, ANDROID_HOME e PATH
2. Criar devices Android e iOS, subir na máquina
3. Instalar bibliotecas em 'requirements.txt', rodando no terminal: 
4. Para executar os testes, com appium rodando, basta rodar comando:

```bash
robot -v PLATAFORMA:AND -d ./logs -i marvel tests
```

```bash
robot -v PLATAFORMA:IOS -d ./logs -i marvel tests
```
