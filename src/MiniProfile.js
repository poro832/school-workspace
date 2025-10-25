import React from 'react';
import './style.css'; // 필요한 경우 전역 스타일을 불러옵니다.

function MiniProfile() {
  // 실제 앱에서는 이 컴포넌트의 노출 여부를 상태(State)로 관리해야 합니다.
  return (
    <div id="mini-profile-container" className="profile-container">
      <div className="mini-profile-card">
        <div className="profile-content">
          <img src="user.png" alt="사용자 아이콘" className="user-icon" />
          <p className="profile-text">로그인이 필요합니다.</p>
        </div>
        <div className="profile-footer">
          <a href="#find-id" className="footer-link">아이디 찾기</a>
          <div className="divider"></div>
          <a href="#find-pw" className="footer-link">비밀번호 찾기</a>
        </div>
      </div>
    </div>
  );
}

export default MiniProfile;