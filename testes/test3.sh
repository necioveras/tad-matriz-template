echo "Testando (3)..."
echo

output=$(./a.out < ./testes/input3.txt)
expected_output="Matriz Original:
5

Matriz Transposta:
5

Diagonal Principal: 5
Diagonal Secundária: 5

Matriz Multiplicada pelo Escalar (3):
15"

if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: A saida esperada esta correta"
else
  echo "Era esperado '$expected_output' mas o programa retornou: $output"
  exit 1
fi

echo
echo "Teste 3 realizado com sucesso"

exit 0