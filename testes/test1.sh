echo "Testando (1)..."
echo

output=$(./a.out < ./testes/input1.txt)
expected_output="Matriz Original:
2 4 6
1 3 5
7 8 9

Matriz Transposta:
2 1 7
4 3 8
6 5 9

Diagonal Principal: 2 3 9
Diagonal Secundária: 6 3 7

Matriz Multiplicada pelo Escalar (3):
6 12 18
3 9 15
21 24 27"

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
echo "Teste 1 realizado com sucesso"

exit 0