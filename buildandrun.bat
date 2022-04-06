echo "Remove old build"
del .\build\bin\swaprouter.exe
echo "Build new"
go run build/ci.go install ./cmd/swaprouter
echo "Run..."
.\build\bin\swaprouter.exe --datadir .\build\bin\ --config .\build\bin\config.toml --runserver