echo "Remove old build"
del .\build\bin\swaprouter.exe
echo "Build new"
go run build/ci.go install ./cmd/swaprouter