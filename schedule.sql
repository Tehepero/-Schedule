CREATE DATABASE sparta;

CREATE TABLE schedule(
     id BIGINT NOT NULL AUTO_INCREMENT,
     task VARCHAR(100) NULL,
     worker_name VARCHAR(50) NULL,
     password VARCHAR(100) NULL,
     created_at DATETIME NULL,
     modified_at DATETIME NULL,
     PRIMARY KEY (id)
);

INSERT INTO schedule (task, worker_name, password, create_at, modified_at)
VALUES ('오늘 할 일!', 'testid123', 'testpassword123', now(), now() );

SELECT * FROM schedule s;
// * => 뜻 모든 컬럼을 조회한다 //

SELECT * FROM schedule s;
WHERE s.worker_name = "testid123"
// 작성자 이름이 testid123인 모든 컬럼을 조회합니다 //

SELECT s.task
FROM schedule s;
// * 전체 조회를 하는데 데이터는 (할 일 컬럼)만 조회하겠다. * //

SELECT s.task
FROM schedule s;
WHERE s.worker_name = "testid123"
// 작성자 이름이 testid123인 할 일만 조회합니다 //

UPDATE schedules s
SET s.task = "내일 할 일", s,modified_at = "2024-11-04"
WHERE s.worker_name = "testid123"
  AND s.password = "testpassword123";

// 아이디가 testid123 이고 비밀번호가 testpasswrod123인 사람의 task를 "내일 할 일"
// 으로 바꾸고 수정일을 2024-11-04로 바꾼다 //

DELETE FROM schdule s
WHERE s.id = '1' AND s.password = 'testpassword123';

// 삭제한다 전부 말고 id 가 1이고 비밀번호가 testpassword123인 것을 //

