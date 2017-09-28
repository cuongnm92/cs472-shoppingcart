<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="/">Shopping Deal</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"> <%@ taglib prefix="sec"
						uri="http://www.springframework.org/security/tags"%>
					<sec:authorize access="isAnonymous()">
						<a class="nav-link" href="${contextPath}/account">Sign In</a>
					</sec:authorize></li>
					<sec:authorize access="isAuthenticated()">
						<a class="nav-link" href="${contextPath}/account" >Account</a>
					</sec:authorize>
				<li class="nav-item"> <%@ taglib prefix="sec"
						uri="http://www.springframework.org/security/tags"%>
					 <sec:authorize access="isAuthenticated()">
						<a class="nav-link" href="${contextPath}/logout" >Logout</a>
					</sec:authorize>
				</li>
			</ul>
		</div>
	</div>
</nav>
