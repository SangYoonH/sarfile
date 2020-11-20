# sarfile
Bash shell for checking high %sys usage

# Usage :
 ./test.sh <input_file_name>
 -h   Help
ex) ./test.sh sar.file

<스크립트에 대한 부연설명>

1. 쉘스크립트 실행 시, sar file(input file)을 첫번 째 파라미터로 명시해 주어야 한다.
2. sar16 파일에는 각 통계에 대한 시간대가 명시되어 있지 않아, 가장 높은 %sys를 사용한 시각 10개를 표출할 수 없음
3. 대신 sar16과 유사하게 만들어진 sarfile(test.txt)를 input으로 넣으면 가장 높은 %sys를 사용한 시각 10개가 표출된다.
   Ex) ./test.sh test.txt
4. 파라미터를 두 개 이상 명시하거나, 명시 하지 않았을 때는 에러 메시지와 함께 스크립트 usage가 표현되게 예외처리를 함.
5. -h option을 명시했을 경우에도 usage를 보여준다.
