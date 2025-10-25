import React, { useState } from "react";
import "./style.css";

export default function CareerBuddyPrototype() {
  const [activeTab, setActiveTab] = useState("home");

  const mentors = [
    {
      name: "김연우",
      title: "Frontend Engineer",
      description: "React 전문가로 6년 경력 보유",
      image: "https://randomuser.me/api/portraits/women/1.jpg",
    },
    {
      name: "박서준",
      title: "Data Engineer",
      description: "데이터 파이프라인 및 분석 전문가",
      image: "https://randomuser.me/api/portraits/men/2.jpg",
    },
    {
      name: "이지은",
      title: "Product Manager",
      description: "PM 경력 5년, 커뮤니케이션 전문가",
      image: "https://randomuser.me/api/portraits/women/3.jpg",
    },
  ];

  return (
    <div className="app-container">
      <header className="app-header">
        <nav className="main-nav">
          <button
            className={activeTab === "home" ? "active" : ""}
            onClick={() => setActiveTab("home")}
          >
            홈
          </button>
          <button
            className={activeTab === "ai" ? "active" : ""}
            onClick={() => setActiveTab("ai")}
          >
            AI 면접연습
          </button>
          <button
            className={activeTab === "mentor" ? "active" : ""}
            onClick={() => setActiveTab("mentor")}
          >
            멘토 찾기
          </button>
          <button
            className={activeTab === "message" ? "active" : ""}
            onClick={() => setActiveTab("message")}
          >
            메시지
          </button>
          <button
            className={activeTab === "profile" ? "active" : ""}
            onClick={() => setActiveTab("profile")}
          >
            내 프로필
          </button>
        </nav>
      </header>

      <main className="tab-container">
        {activeTab === "home" && (
          <div className="home-tab">
            <h2>나만의 커리어를 설계하세요</h2>
            <p>AI 면접연습, 멘토 매칭, 커뮤니케이션을 한 곳에서 경험하세요.</p>
          </div>
        )}

        {activeTab === "ai" && (
          <div className="ai-tab">
            <h2>AI 면접 연습</h2>
            <p>면접 질문에 대한 답변을 입력해보세요. AI가 피드백을 제공합니다.</p>
            <textarea
              className="ai-input"
              placeholder="면접 답변을 입력하세요..."
            ></textarea>
            <button className="primary-btn">피드백 받기</button>
          </div>
        )}

        {activeTab === "mentor" && (
          <div className="mentor-tab">
            <h2>멘토 찾기</h2>
            <div className="mentor-list">
              {mentors.map((m, i) => (
                <div key={i} className="mentor-card">
                  <img src={m.image} alt={m.name} className="mentor-img" />
                  <div className="mentor-info">
                    <h3>{m.name}</h3>
                    <p className="mentor-title">{m.title}</p>
                    <p className="mentor-desc">{m.description}</p>
                    <button className="mentor-btn">멘토 요청</button>
                  </div>
                </div>
              ))}
            </div>
          </div>
        )}

        {activeTab === "message" && (
          <div className="message-tab">
            <h2>메시지</h2>
            <p>멘토 또는 멘티와의 대화를 여기서 확인할 수 있습니다.</p>
            <div className="message-box">아직 메시지가 없습니다.</div>
          </div>
        )}

        {activeTab === "profile" && (
          <div className="profile-tab">
            <h2>내 프로필</h2>
            <div className="profile-card">
              <img
                src="https://randomuser.me/api/portraits/men/10.jpg"
                alt="profile"
              />
              <div>
                <h3>홍길동</h3>
                <p>직무: UX 디자이너</p>
                <p>관심 분야: 커리어 성장, 포트폴리오 전략</p>
              </div>
            </div>
          </div>
        )}
      </main>
    </div>
  );
}
