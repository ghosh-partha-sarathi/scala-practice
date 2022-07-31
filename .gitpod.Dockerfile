FROM gitpod/workspace-full:2022-05-19-23-37-25

# installing scala into image via HomeBrew
RUN brew install scala

# installing Ammonite REPL
RUN sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.5.3/3.1-2.5.3) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm'

# installing version manager for scala
RUN scalaenv install scala-2.13.8 && scalaenv global scala-2.13.8
