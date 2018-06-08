@docker build --quiet --tag alpine-dotnet .
@docker run --privileged -v %cd%\root:/root -it alpine-dotnet
