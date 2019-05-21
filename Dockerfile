FROM mcr.microsoft.com/dotnet/core/sdk AS builder
WORKDIR /source

RUN git clone https://github.com/kajasumanie/ConsoleApplicationdemo.git
WORKDIR /source/ConsoleApplicationdemo/ConsoleApplicationdemo

RUN dotnet restore

RUN dotnet publish "./ConsoleApplicationdemo.csproj" --output "./dist" --configuration Release --no-restore

FROM mcr.microsoft.com/dotnet/core/runtime
WORKDIR /app
COPY --from=builder /source/ConsoleApplicationdemo/ConsoleApplicationdemo/dist .
ENTRYPOINT ["dotnet", "ConsoleApplicationdemo.dll"]