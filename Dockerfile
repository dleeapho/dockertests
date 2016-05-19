FROM msimons/dotnet:nanoserver
RUN mkdir \myapp
WORKDIR \myapp
RUN dotnet new
RUN dotnet restore
RUN dotnet build
RUN dotnet --info
ENTRYPOINT ["dotnet", "run"]