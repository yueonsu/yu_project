<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
    <div>
        <span>글 번호 : ${requestScope.detailData.iboard}</span>
    </div>
    <div>
        <span>작성일시 : ${requestScope.detailData.rdt}</span>
    </div>
    <div>
        <span>작성자 : ${requestScope.detailData.writerNm}</span>
    </div>
    <div>
        <span>조회수 : ${requestScope.detailData.hit}</span>
    </div>
    <div>
        <span>글 제목 :<c:out value="${requestScope.detailData.title}"/></span>
    </div>
    <div>
        <span>내용</span>
    </div>
    <div>
        <span><c:out value="${requestScope.detailData.ctnt}"/></span>
    </div>
    <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.iuser == requestScope.detailData.writer}">
        <div>
            <button>삭제</button>
            <a href="/board/regmod?iboard=${requestScope.detailData.iboard}"><button>수정</button></a>
        </div>
    </c:if>
</div>