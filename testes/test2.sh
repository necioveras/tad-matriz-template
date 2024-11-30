echo "Testando (2)..."
echo

output=$(./a.out < ./testes/input2.txt)
expected_output="Matriz Original:
1 2 3 4 5 6 7 8
8 7 6 5 4 3 2 1
2 4 6 8 1 3 5 7
7 5 3 1 8 6 4 2
3 1 7 5 2 4 8 6
6 8 2 4 3 1 7 5
4 6 8 2 7 5 3 1
5 3 1 7 6 8 2 4

Matriz Transposta:
1 8 2 7 3 6 4 5
2 7 4 5 1 8 6 3
3 6 6 3 7 2 8 1
4 5 8 1 5 4 2 7
5 4 1 8 2 3 7 6
6 3 3 6 4 1 5 8
7 2 5 4 8 7 3 2
8 1 7 2 6 5 1 4

Diagonal Principal: 1 7 6 1 2 1 3 4
Diagonal Secundária: 8 2 3 8 5 2 6 5

Matriz Multiplicada pelo Escalar (4):
4 8 12 16 20 24 28 32
32 28 24 20 16 12 8 4
8 16 24 32 4 12 20 28
28 20 12 4 32 24 16 8
12 4 28 20 8 16 32 24
24 32 8 16 12 4 28 20
16 24 32 8 28 20 12 4
20 12 4 28 24 32 8 16"


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
echo "Teste 2 realizado com sucesso"

exit 0