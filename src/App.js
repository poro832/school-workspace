import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Header from "./Header";
import MiniProfile from "./MiniProfile";
import CareerBuddyPrototype from "./CareerBuddyPrototype"; // CareerBuddy 컴포넌트 import

function App() {
  return (
    <Router>
      <div className="bg-body text-main">
        <Header />
        <main>
          <Routes>
            <Route path="/" element={<MiniProfile />} />
            <Route path="/careerbuddy" element={<CareerBuddyPrototype />} />
          </Routes>
        </main>
        <footer>{/* 푸터 영역 */}</footer>
      </div>
    </Router>
  );
}

export default App;