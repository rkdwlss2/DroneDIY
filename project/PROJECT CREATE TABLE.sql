USE DRONE_DIY
CREATE TABLE ȸ��(
   ȸ��ID CHAR(15) NOT NULL,
   �̸� VARCHAR(15) NOT NULL,
   �޴�����ȣ VARCHAR(20) NOT NULL,
   ��й�ȣ VARCHAR(15) NOT NULL,
   �̸��� VARCHAR(30) NOT NULL,
   �ּ� TEXT NOT NULL,
   CONSTRAINT ȸ��PK PRIMARY KEY(ȸ��ID)
);

CREATE TABLE ����(
   ������ȣ INT NOT NULL,
   �̸� VARCHAR(10) NOT NULL,
   �޴�����ȣ VARCHAR(20) NOT NULL,
   ��й�ȣ VARCHAR(15) NOT NULL,
   CONSTRAINT ����PK PRIMARY KEY(������ȣ),
);

CREATE TABLE �űԺ�ǰ(
   �űԺ�ǰ��ȣ INT NOT NULL,
   ��ǰ���� VARCHAR(15) NOT NULL,
   �䱸���� TEXT NOT NULL,
   ��û���� VARCHAR(30)  NOT NULL,
   ȸ��ID CHAR(15),
   ���ο��� CHAR(5),
   ������ȣ INT,
   CONSTRAINT �ű�PK PRIMARY KEY(�űԺ�ǰ��ȣ)
)

CREATE TABLE ��ǰ��ü(
   ��ü��ȣ INT NOT NULL,
   ��ü�� VARCHAR(15) NOT NULL,
   ��ȭ��ȣ VARCHAR(20) NOT NULL,
   ������ȣ INT,
   CONSTRAINT ��üPK PRIMARY KEY(��ü��ȣ)
)

CREATE TABLE ����(
   ��ǰ��ȣ INT NOT NULL,
   ��ü��ȣ INT NOT NULL,
   CONSTRAINT ����PK PRIMARY KEY(��ǰ��ȣ,��ü��ȣ)
)

CREATE TABLE ��ǰ(
   ��ǰ��ȣ INT NOT NULL,
   ��ǰ�� VARCHAR(50) NOT NULL,
   ���� INT NOT NULL,
   ���� INT NOT NULL,
   ���� INT NOT NULL,
   ���� INT NOT NULL,
   ���� INT NOT NULL,
   CONSTRAINT ��ǰPK PRIMARY KEY(��ǰ��ȣ)
)

CREATE TABLE ������(
   ��ǰ��ȣ INT NOT NULL,
   �ȱ��� INT NOT NULL,
   ���� VARCHAR(10) NOT NULL,
   CONSTRAINT ������PK PRIMARY KEY(��ǰ��ȣ)
)

CREATE TABLE �����緯(
   ��ǰ��ȣ INT NOT NULL,
   ���� VARCHAR(10) NOT NULL,
   ���� VARCHAR(10) NOT NULL,
    CONSTRAINT �����緯PK PRIMARY KEY(��ǰ��ȣ)
)

CREATE TABLE ���͸�(
   ��ǰ��ȣ INT NOT NULL,
   �뷮 INT NOT NULL,
   ���� INT NOT NULL,
   CONSTRAINT ���͸�PK PRIMARY KEY(��ǰ��ȣ)
)

CREATE TABLE ����(
   ��ǰ��ȣ INT NOT NULL,
   KV INT NOT NULL,
   �Ŀ� INT NOT NULL,
   CONSTRAINT ����PK PRIMARY KEY(��ǰ��ȣ)
)

CREATE TABLE ī�޶�(
   ��ǰ��ȣ INT NOT NULL,
   ���� VARCHAR(20) NOT NULL,
   ȭ�� INT NOT NULL,
   CONSTRAINT ī�޶�PK PRIMARY KEY(��ǰ��ȣ)
)

CREATE TABLE �ֹ�����(
   �ֹ���ȣ INT NOT NULL,
   �������� CHAR NOT NULL,
   �ֹ���¥ VARCHAR(30) NOT NULL,
   ȸ��ID CHAR(15) NOT NULL,
   CONSTRAINT �ֹ�PK PRIMARY KEY(�ֹ���ȣ)
)

CREATE TABLE ����(
   �ֹ���ȣ INT NOT NULL,
   ��ǰ��ȣ INT NOT NULL,
   ���� INT NOT NULL,
   CONSTRAINT ����PK PRIMARY KEY(�ֹ���ȣ,��ǰ��ȣ)
)

CREATE TABLE ����(
   ���ǹ�ȣ INT NOT NULL,
   ���ǳ��� TEXT NOT NULL,
   �ۼ��ð� VARCHAR(30) NOT NULL,
   ȸ��ID CHAR(15) NOT NULL,
   CONSTRAINT ����PK PRIMARY KEY(���ǹ�ȣ)
)

CREATE TABLE �亯���(
   �亯���� TEXT NOT NULL,
   �ۼ��ð� VARCHAR(30) NOT NULL,
   ���ǹ�ȣ INT NOT NULL,
   ������ȣ INT NOT NULL,
   CONSTRAINT �亯���PK PRIMARY KEY(���ǹ�ȣ,������ȣ)
)

