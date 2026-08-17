# TaskLens MVP

긴 과제 안내문을 붙여넣으면 제출 체크리스트로 변환하는 단일 페이지 MVP입니다.

## 핵심 가설
긴 과제 공지/평가기준을 읽는 대학생은 필수 요구사항을 놓치기 쉽고,
자동 체크리스트가 있으면 실제 과제 수행 전에 사용할 것이다.

## MVP 기능
- 과제 안내문 붙여넣기
- 번호/불릿/행동어 기반 요구사항 추출
- 체크리스트 생성
- 완료율 표시
- 체크리스트 복사
- GA 연결 시 이벤트 측정 가능
  - checklist_generated
  - checklist_copied
  - checklist_completed
  - checklist_reset

## 1차 KPI 예시
- 방문자 20명 이상
- 방문자의 50% 이상이 checklist_generated 실행
- 생성자의 30% 이상이 checklist_copied 실행

## 2차 개선안
1차 사용자 인터뷰에서 "요구사항은 뽑히지만 우선순위/마감관리가 부족하다"는 피드백이 나오면:
- 중요도 태그
- 마감일 입력
- 제출 전 최종 점검 모드
중 1개만 추가하여 다시 검증합니다.

## 실행
index.html을 브라우저에서 열면 바로 실행됩니다.

## 배포
GitHub 저장소에 index.html 업로드 → Vercel에서 저장소 Import → Deploy.

## Google Analytics
GA 태그를 index.html의 <head>에 추가하면 현재 코드의 track() 이벤트가 자동 기록됩니다.
