Intro

Gradle
---
- Para aplicativos mobile e microservicos, gradle automatiza
- Pode ser encontrado facilmente pelos package manager
- Em alguns sitemas o Gradle pode não estar disponível
  - Pode ser feito o download e extrair o zip file
  - Download e documentação completa em: https://gradle.org/install
- Versão corrente em 7.4 do gradle
- Depende de Java JDK 8 ou maior

Gradle wrapper
---
- é o script que invoca a versão declarada do gradle, fazendo o download antecipado se necessário
- Permite ao gradle instalar usando os arquivos do seu projeto já versionado (incluindo script)
    - Interessante pois retira a necessidade de ter o gradle instalado no momento de build
    - Certifica que todo o projeto irá rodar na versão especificada do gradle
    - Permite você buildar diferentes versões de Gradle em um mesmo sistema
    - Requierimentos minimos necesáruis para rodar o buidl (Java apenas) consumido por Anyone ou processo auto
- Se voce tiver o gradle o gradle wrapper estará disponível
- Wrapper é chamado pelo script gradlew

Gradle build
---
- Consiste em executar as tarefas em modo de comando
  - ./gradlew NomeDaTarefa
- build.file exibe todas as tarefas disponiveis no seu projeto
  - Podendo ser customizada
  - Gradle utiliza do conceito de dependencias de tasks
    - Ao rodar uma task, qualquer outra tiver dependencias, deve ser rodada primeiro
- A dependencia de tasks podem ser determinadas, devendo antes ser rodadas suas respectivas dependencias
- Pode ser definida a ordem em build.gradle (taskA dependsOn taskB)
- A ordem é fundamental para o gradle e também para a automação do projeto

Automated tests
---
- Geralmente, testes automatizados são rodadso via Gradle como uma tarefa em um processo de build
  - task build
  - task test
  - build.dependsOn test




