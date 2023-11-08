import React from "react";
import { Layout, Row, Col, Divider } from "antd";
import { useNavigate, useSearchParams } from "react-router-dom";

import SerachTemplete from "components/Write/SearchTemplete";
import WriteForm from "components/Write/WriteDocs";
import ImageUpload from "components/Write/ImageUpload";
import CategorySelect from "components/Write/CategorySelect";

import { createDocs } from "utils/DocsApi";
import { openNotification } from "App";
import { remove } from "react-cookies";

const { Content } = Layout;
const WritePage = () => {
  const [searchParams] = useSearchParams();
  const [title, setTitle] = React.useState("");
  const [step, setStep] = React.useState(0);
  const [content, setContent] = React.useState("");
  const [selectedClass, setSelectedClass] = React.useState([]);
  const [readAuth, setReadAuth] = React.useState(1);
  const [writeAuth, setWriteAuth] = React.useState(1);

  const navigate = useNavigate();

  const next = () => {
    // setContent(content);
    setStep(step + 1);
  };

  React.useEffect(() => {
    const title = searchParams.get("title");
    setTitle(title == undefined ? "문서 제목" : title); //url에서 가져오기
    setContent("");
  }, []);

  React.useEffect(() => {
    console.log(readAuth);
  }, [readAuth]);
  React.useEffect(() => {
    console.log(writeAuth);
  }, [writeAuth]);
  const create = () => {
    // axios로 등록 데이터 넣어줘야함
    createDocs({
      title: title,
      content: content,
      categories: selectedClass,
      readAuth: readAuth,
      writeAuth: writeAuth,
    }).then((result) => {
      //완료
      console.log(result);
      openNotification(
        "success",
        "문서작성 완료",
        `${result.title}문서가 생성되었습니다.`
      );

      navigate(`/res/content/${result.docsId}/${result.title}`);
    });
  };
  return (
    <Layout>
      <Content
        style={{
          backgroundColor: "white",
          textAlign: "left",
          padding: "2%",
        }}
      >
        {step == 0 ? (
          <CategorySelect
            next={next}
            setReadAuth={setReadAuth}
            setWriteAuth={setWriteAuth}
          />
        ) : (
          <></>
        )}
        {step == 1 ? <SerachTemplete next={next} /> : <></>}
        {step == 2 ? (
          <div>
            <WriteForm
              title={title}
              setTitle={setTitle}
              content={content}
              setContent={setContent}
              button="등록"
              completeLogic={create}
              selectedClass={selectedClass}
              setSelectedClass={setSelectedClass}
            />
            <Divider orientation="left" orientationMargin="0">
              <b>이미지 링크</b>
            </Divider>
            <ImageUpload />
          </div>
        ) : (
          <></>
        )}
      </Content>
    </Layout>
  );
};

export default WritePage;