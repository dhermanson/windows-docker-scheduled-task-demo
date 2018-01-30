task img {
  docker build -t scheduled-demo .
}

task run {
  docker run --rm -it --entrypoint=powershell scheduled-demo
}
