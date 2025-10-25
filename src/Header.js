import React from "react";
import { Link } from "react-router-dom";

function Header() {
  return (
    <header className="header-main">
      <nav className="nav-container">
        {/* 로고 클릭 시 메인 페이지로 이동 */}
        <div className="logo-area">
          <Link to="/">
            <img src="logo.png" alt="CareerBuddy 로고" className="logo-img" />
          </Link>
        </div>

        {/* 메뉴 */}
        <div className="menu-category-group">
          <Link to="/careerbuddy" className="menu-item font-bold text-lg hover-purple">
            맞춤형 커리어 디자인🖥️
          </Link>
          <a href="AI.html" className="menu-item font-bold text-lg hover-purple">
            멘토링🤝🏼
          </a>
          <a href="#roadmap" className="menu-item font-bold text-lg hover-purple">
            헤드 헌팅🏢
          </a>
        </div>

        {/* 로그인 / 회원가입 */}
        <div className="auth-group">
          <a href="#cta" className="btn btn-primary">로그인</a>
          <a href="#cta" className="btn btn-secondary">회원가입</a>
        </div>
      </nav>
    </header>
  );
}

export default Header;
