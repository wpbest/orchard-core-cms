FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

EXPOSE 80
ENV ASPNETCORE_URLS http://+:80

WORKDIR /app
COPY ./OrchardCMS/bin/Release/netcoreapp3.0 .

ENTRYPOINT ["dotnet", "OrchardCMS.dll"]