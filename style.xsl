<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			<head>
				<title>Title</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta
					name="viewport"
					content="width=device-width, initial-scale=1, shrink-to-fit=no"
					/>
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link
					href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
					rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
					crossorigin="anonymous"
					/>
				<link rel="stylesheet" href="css/style.css"/>
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
			</head>
			
			<body>
				<header>
					<div class="col-11 mx-auto border-start border-end" id="up">
						<div class="bg-light px-2 row mx-0 py-4 align-items-center">
							<div class="col-4">
								<img class="img-fluid w-50" src="img/logo.png" alt=""/>
								
							</div>
							
							<div class="col-4 letraazul text-center">
								<h2>IES AZARQUIEL</h2>
							</div>
							
							<div class="col-4 text-end">
								
								<img class="img-fluid w-50" src="img/logo.png" alt=""/>
							</div>
						</div>
						
					</div>
				</header>
				<main>
					<div class="col-11 mx-auto border-start border-end">
						<div class="row mx-0 py-3 px-2">
							<xsl:for-each select="fitness/target">
								<div class="col-lg-2 col-md-3 col-sm-4 col-6 d-flex mb-4 d-flex">
									<a class="text-decoration-none d-flex" href="#{@name}">
										<div class="card bg-light d-flex">
											<img class="card-img-top img-fluid" src="img/targetmap.png" alt="Title" />
											<div class="card-body">
												<h4 class="card-title letraazul text-center"><xsl:value-of select="@name"/></h4>
											</div>
										</div>
									</a>
									
									
								</div>
							</xsl:for-each>
							
						</div>
					</div>
					<xsl:for-each select="/fitness/target">
						<div class="col-11 mx-auto border-start border-end">
							<div class="col fondoazul text-center text-white py-2 px-2" id="{@name}">
								<h2>Target: <xsl:value-of select="@name"/></h2>
							</div>
							<div class="row mx-0 ">
								<xsl:for-each select="exercise">
									<div class="col-lg-6 d-flex pb-2" >
										<div class="col-11 border mx-auto rounded-2 bg-light mt-1">
											<div class="row mx-0 pt-2 d-flex">
												<xsl:choose>
													<xsl:when test="gifUrl">
														<div class="col-6">
															<img class="img-fluid" src="{gifUrl}" alt=""/>
														</div>
													</xsl:when>
													<xsl:otherwise>
														<div class="col-6">
															<img class="img-fluid" src="img/noimage.png" alt=""/>
														</div>
													</xsl:otherwise>
												</xsl:choose>
												
												<div class="col-6 ps-2 letraazul">
													<h3><xsl:value-of select="name"/></h3>
													<h4>Body Part: <xsl:value-of select="bodyPart"/></h4>
													<h4>Equipment: <xsl:value-of select="equipment"/></h4>
												</div>
											</div>
											
										</div>
										
									</div>
								</xsl:for-each>
								
							</div>
						</div>
					</xsl:for-each>
					
				</main>
				<footer>
					<footer>
            <div class="col">
                <div class="row mx-0">
                    
                    
                    <div class="col-1 py-2 position-fixed fixed-bottom start-0 ps-2" >
                        <a href="#up" class="btn text-danger">
                            <h3><i class="fa fa-upload" aria-hidden="true"></i></h3>
                        </a>
                    </div>
                    <div class="col-11 bg-light mx-auto letraazul text-center border-start border-end">
                        <h2>XSL-DAM-DAW</h2>
                    </div>
                    <div class="col-1 py-2 position-fixed fixed-bottom start-100 translate-middle-x pe-5" >
                        <a href="#up" class="btn text-danger">
                            <h3><i class="fa fa-upload" aria-hidden="true"></i></h3>
                        </a>
                    </div>
                </div>
            
                
            </div>
            
        </footer>
					
					
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script
					src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"
					></script>
				
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"
					></script>
			</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>