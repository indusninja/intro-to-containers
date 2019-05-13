FROM mcr.microsoft.com/dotnet/core/sdk AS builder
WORKDIR /source

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

COPY *.csproj .
RUN dotnet restore

COPY ./ ./

RUN dotnet publish "./react-app.csproj" --output "./dist" --configuration Release --no-restore

FROM mcr.microsoft.com/dotnet/core/aspnet
WORKDIR /app
COPY --from=builder /source/dist .
EXPOSE 80
ENTRYPOINT ["dotnet", "react-app.dll"]