FROM gitpod/workspace-full:2022-05-19-23-37-25
RUN sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.5.3/3.1-2.5.3) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm'
RUN brew install scala coursier/formulas/coursier sbt scalaenv
RUN sudo env "PATH=$PATH" coursier bootstrap org.scalameta:scalafmt-cli_2.12:2.4.2 -r sonatype:snapshots -o /usr/local/bin/scalafmt --standalone --main org.scalafmt.cli.Cli
RUN scalaenv install scala-2.13.8 && scalaenv global scala-2.13.8