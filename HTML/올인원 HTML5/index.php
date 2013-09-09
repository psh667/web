<?php
	/***********Sample index파일***************************/
	
	//titel 및 meta 설정
	$title='Sample List : COFORWARD';
	$description='';
	$pageKeyword='';
	
	//페이지에만 적용되는 CSS및 js설정
	$page_css='';
	$page_javascript='<script type="text/javascript" src="../js/sampleList.js"></script>';
	
	//팝업컨텐츠
	$popupContent='';
	
	//headerContents영역
	$headerContent='<h1>올인원 웹 실무 가이드 HTML5&amp;CSS3</h1><h2>SVG,CANVAS,API,모바일 웹 사이트 구축까지 한번에</h2>';	
	
	//메인 컨텐츠 영역
	ob_start();
?>
	<!--컨텐츠 부분 -->
    <h1>예제 파일 리스트 <a class="link_downloadAll" href="sample_all.zip">예제파일 전체 다운로드</a></h1>
    <article id="sampleStandard" class="sampleArticle">
    	<h1>Web standard</h1>
        <ul>
        	<li><a href="./standard/standardSample01.html" target="_blank">구조적으로 작성된 HTML</a></li>
            <li><a href="./standard/standardSample02.html" target="_blank">보여지는 모습을 위해 작성된 HTML</a></li>
        </ul>
        <a class="link_download" href="./html5_outline/html5_outline.zip">예제파일 다운로드</a>
    </article>
    
    <article id="sampleAttr" class="sampleArticle">
    	<h1>HTML5 - attribute</h1>
        <ul>
        	<li><a href="./html5_attribute/01_contenteditable.html" target="_blank">contneteditable</a></li>
            <li><a href="./html5_attribute/02_contextmenu.html" target="_blank">contextmenu</a></li>
            <li><a href="./html5_attribute/03_draggable.html" target="_blank">draggable</a></li>
            <li><a href="./html5_attribute/04_hidden.html" target="_blank">hidden</a></li>
            <li><a href="./html5_attribute/05_spellcheck.html" target="_blank">spellcheck</a></li>
            <li><a href="./html5_attribute/06_data-.html" target="_blank">data-*</a></li>
            <li><a href="./html5_attribute/07_itemscope.html" target="_blank">itemscope</a></li>
        </ul>
        <a class="link_download" href="./html5_outline/html5_outline.zip">예제파일 다운로드</a>
	</article>
      
    <article id="sampleOutline" class="sampleArticle">    
        <h1>HTML5 - outline</h1>
        <ul>
        	<li><a href="./html5_outline/outLine02.html" target="_blank">암묵적 아웃라인의 예</a></li>
        </ul>
        <a class="link_download" href="./html5_outline/html5_outline.zip">예제파일 다운로드</a>
    </article>
    
    <article id="sampleSemantic" class="sampleArticle">    
        <h1>HTML5 - text semantic</h1>
        <ul>
        	<li><a href="./html5_text/01_a_html4.html" target="_blank">HTML 4.01기준의 &lt;a&gt; 요소</a></li>
            <li><a href="./html5_text/01_a_html5.html" target="_blank">HTML 5의 &lt;a&gt; 요소</a></li>
            <li><a href="./html5_text/02_em_strong.html" target="_blank">HTML 5에서 강조 의미의 변화</a></li>
            <li><a href="./html5_text/03_time.html" target="_blank">시간을 표시하는 새 요소 &lt;time&gt;</a></li>
            <li><a href="./html5_text/04_ruby.html" target="_blank">&lt;ruby&gt;의 예</a></li>
        </ul>
        <a class="link_download" href="./html5_text/html5_text.zip">예제파일 다운로드</a>
    </article>
    
    <article id="sampleVideo" class="sampleArticle">        
        <h1>HTML5 - &lt;video&gt;</h1>
        <ul>
        	<li><a href="./html5_video/01_video.html" target="_blank">&lt;video&gt; 요소</a></li>
            <li><a href="./html5_video/02_attr.html" target="_blank">&lt;video&gt; 요소 속성</a></li>
            <li><a href="./html5_video/03_source.html" target="_blank">&lt;video&gt; - &lt;source&gt;</a></li>
            <li><a href="./html5_video/04_player.html" target="_blank">&lt;video&gt; - API</a></li>
        </ul>
        <a class="link_download" href="./html5_video/html5_video.zip">예제파일 다운로드</a>
	</article>
    
    <article id="sampleForm" class="sampleArticle">         
        <h1>HTML5 - &lt;form&gt;</h1>
        <ul>
        	<li><a href="./html5_form/01_input_type.html" target="_blank">HTML5에서 추가된 &lt;input&gt;요소의 [type]</a></li>
            <li><a href="./html5_form/02_output.html" target="_blank">&lt;output&gt; - 서식의 출력 요소</a></li>
            <li><a href="./html5_form/03_keygen.html" target="_blank">&lt;keygen&gt; - 암호화를 위한 키쌍의 생성</a></li>
            <li><a href="./html5_form/04_progress.html" target="_blank">&lt;progress&gt; - 진행상황의 표시</a></li>
            <li><a href="./html5_form/05_meter.html" target="_blank">&lt;meter&gt; - 현재값의 표시</a></li>
            <li><a href="./html5_form/06_datalist.html" target="_blank">&lt;datalist&gt; - 입력 추천어의 제공</a></li>
            <li><a href="./html5_form/07_button.html" target="_blank">&lt;button&gt; - 폼기능 사용방법의 변화</a></li>
            <li><a href="./html5_form/08_attr_form_html4.html" target="_blank">기존 HTML에서의 form의 사용</a></li>
            <li><a href="./html5_form/08_attr_form_html5.html" target="_blank">HTML5에서 [form]속성의 사용</a></li>
            <li><a href="./html5_form/09_attr_placeholder.html" target="_blank">[placeholder] - 입력내용의 안내</a></li>
            <li><a href="./html5_form/10_attr_autofocus.html" target="_blank">[autofocus] - 자동으로 포커스를 위치시킴</a></li>
            <li><a href="./html5_form/11_attr_autocomplete.html" target="_blank">[autocomplete] - 자동완성 기능의 컨트롤</a></li>
            <li><a href="./html5_form/12_valid01_maxlength.html" target="_blank">[maxlength]- 입력의 최대 길이</a></li>
            <li><a href="./html5_form/12_valid02_required.html" target="_blank">[required] - 필수 입력 사항</a></li>
            <li><a href="./html5_form/12_valid03_pattern.html" target="_blank">[pattern] - 정규식 패턴의 검증</a></li>
            <li><a href="./html5_form/12_valid04_minMax.html" target="_blank">[min], [max] - 수치 입력의 최대 값과 최소 값</a></li>
            <li><a href="./html5_form/12_valid05_step.html" target="_blank">[step] - 입력 수치의 단계조절</a></li>
            <li><a href="./html5_form/12_valid06_type.html" target="_blank">[type] - 입력형식에 따른 검증</a></li>
            <li><a href="./html5_form/12_valid07_novalidate.html" target="_blank">[novalidate] - 폼값을 검증하지 않음</a></li>
        </ul>
        <a class="link_download" href="./html5_form/html5_form.zip">예제파일 다운로드</a>    
    </article>    
        
    <article id="sampleCss2" class="sampleArticle">
    	<h1>CSS 2</h1>
        <ul>
        	<li><a href="./css2/ruleOfCss_01_elementSelector.html" target="_blank">element Selector</a></li>
            <li><a href="./css2/ruleOfCss_02_classSelector.html" target="_blank">Class Selector</a></li>
            <li><a href="./css2/ruleOfCss_03_idSelector.html" target="_blank">id Selector</a></li>
            <li><a href="./css2/ruleOfCss_04_pseudoSelector.html" target="_blank">pseudo Selector</a></li>
            <li><a href="./css2/ruleOfCss_05_childSelector.html" target="_blank">child Selector</a></li>
            <li><a href="./css2/ruleOfCss_06_multiSelector.html" target="_blank">multi-Select</a></li>
            <li><a href="css2/ruleOfCss_07_combinator.html" target="_blank">combinator</a></li>
            <li><a href="./css2/useCss_01_boxModel.html" target="_blank">Box Model</a></li>
            <li><a href="./css2/useCss_02_padding.html" target="_blank">Padding</a></li>
            <li><a href="./css2/useCss_03_border.html" target="_blank">border</a></li>
            <li><a href="./css2/useCss_04_margin.html" target="_blank">margin</a></li>
            <li><a href="./css2/useCss_05_line-height.html" target="_blank">line-height</a></li>
            <li><a href="./css2/useCss_06_vertical-align.html" target="_blank">vertical-align</a></li>
            <li><a href="./css2/useCss_07_display.html" target="_blank">display</a></li>
            <li><a href="./css2/useCss_07_display02.html" target="_blank">display02</a></li>
            <li><a href="./css2/useCss_08_visibility.html" target="_blank">visibility</a></li>
            <li><a href="./css2/useCss_09_position.html" target="_blank">position</a></li>
            <li><a href="css2/useCss_10_float.html" target="_blank">float &amp; clear</a></li>
            <li><a href="./css2/useCss_11_zIndex.html" target="_blank">z-index</a></li>
            <li><a href="./css2/useCss_12_width&height.html" target="_blank">width &amp; height</a></li>
            <li><a href="./css2/useCss_13_minWidth&minHeight.html" target="_blank">min-width &amp; min-height</a></li>
            <li><a href="./css2/useCss_14_maxWidth&maxHeight.html" target="_blank">max-width &amp; max-height</a></li>
            <li><a href="./css2/useCss_15_overflow.html" target="_blank">overflow</a></li>
            <li><a href="./css2/useCss_16_background.html" target="_blank">background</a></li>
            <li><a href="./css2/useCss_17_font.html" target="_blank">font</a></li>
            <li><a href="./css2/useCss_18_textIndent.html" target="_blank">text-indent</a></li>
            <li><a href="./css2/useCss_19_textAlign.html" target="_blank">text-align</a></li>
            <li><a href="./css2/useCss_20_textDecoration.html" target="_blank">text-decoration</a></li>
            <li><a href="./css2/useCss_21_textTransform.html" target="_blank">text-transform</a></li>
            <li><a href="./css2/useCss_22_textSpacing.html" target="_blank">letter-spacing &amp; word-spacing</a></li>
            <li><a href="./css2/useCss_23_whiteSpace.html" target="_blank">white-space</a></li>
            <li><a href="./css2/useCss_24_cursor.html" target="_blank">cursor</a></li>
            <li><a href="./css2/useCss_25_captionSide.html" target="_blank">caption-side</a></li>
            <li><a href="./css2/useCss_26_borderCollapse.html" target="_blank">border-collapse</a></li>
            <li><a href="./css2/useCss_27_borderSpacing.html" target="_blank">border-spacing</a></li>
            <li><a href="./css2/useCss_28_emptyCells.html" target="_blank">empty-cells</a></li>
            <li><a href="./css2/useCss_29_tableLayer.html" target="_blank">Table Element Layer</a></li>
            <li><a href="./css2/useCss_30_listStyle.html" target="_blank">list-style</a></li>
        </ul>
        <a class="link_download" href="./css2/css2.zip">예제파일 다운로드</a> 
    </article>
    	
    <article id="sampleCss3" class="sampleArticle">
    	<h1>CSS 3</h1>
       	<ul>
        	<li><a href="./css3/01_css3_scoped.html" target="_blank">scoped</a></li>
            <li><a href="./css3/02_css3_mediaQuery.html" target="_blank">media query</a></li>
            <li><a href="./css3/03_css3_rgba.html" target="_blank">rgba &amp; hsla</a></li>
            <li><a href="./css3/04_css3_opacity.html" target="_blank">opacity</a></li>
            <li><a href="./css3/05_css3_gradient.html" target="_blank">gradient</a></li>
            <li><a href="./css3/06_css3_border-radius.html" target="_blank">border-radius</a></li>
            <li><a href="./css3/07_css3_border-image.html" target="_blank">border-image</a></li>
            <li><a href="./css3/08_css3_box-shadow.html" target="_blank">box-shadow</a></li>
            <li><a href="./css3/09_css3_background.html" target="_blank">background</a></li>
            <li><a href="./css3/10_css3_background-clip.html" target="_blank">background-clip</a></li>
            <li><a href="./css3/11_css3_background-origin.html" target="_blank">background-origin</a></li>
            <li><a href="./css3/12_css3_background-size.html" target="_blank">background-size</a></li>
            <li><a href="./css3/13_css3_@font-face.html" target="_blank">@font-face</a></li>
            <li><a href="./css3/14_css3_text-overflow.html" target="_blank">text-overflow</a></li>
            <li><a href="./css3/15_css3_text-shadow.html" target="_blank">text-shadow</a></li>
            <li><a href="./css3/16_css3_word-wrap.html" target="_blank">word-wrap</a></li>
            <li><a href="./css3/17_css3_column.html" target="_blank">column</a></li>
            <li><a href="./css3/18_css3_box-size.html" target="_blank">box-size</a></li>
            <li><a href="./css3/19_css3_outline.html" target="_blank">outline-offset</a></li>
            <li><a href="./css3/20_css3_resize.html" target="_blank">resize</a></li>
            <li><a href="./css3/21_css3_box-orient.html" target="_blank">box-orient</a></li>
            <li><a href="./css3/22_css3_box-direction.html" target="_blank">box-direction</a></li>
            <li><a href="./css3/23_css3_box-ordinal-group.html" target="_blank">box-ordinal-group</a></li>
            <li><a href="./css3/24_css3_box-flex.html" target="_blank">box-flex</a></li>
            <li><a href="./css3/25_css3_box-align.html" target="_blank">box-aling &amp; box-pack</a></li>
            <li><a href="./css3/26_css3_box-reflect.html" target="_blank">box-reflect</a></li>
            <li><a href="./css3/27_css3_transform.html" target="_blank">transform</a></li>
            <li><a href="./css3/28_css3_transition.html" target="_blank">transition</a></li>
            <li><a href="./css3/29_css3_animation.html" target="_blank">animation</a></li>
        </ul>
    	<a class="link_download" href="./css3/css3.zip">예제파일 다운로드</a>
    </article>
    
    <article id="sampleJavascript" class="sampleArticle">
    	<h1>javascript</h1>
       	<ul>
        	<li><a href="./javascript/dom_01.html" target="_blank">DOM 예제의 HTML형식</a></li>
            <li><a href="./javascript/javascript_01.html" target="_blank">요소의 선택</a></li>
            <li><a href="./javascript/javascript_02.html" target="_blank">style의 적용</a></li>
            <li><a href="./javascript/javascript_03.html" target="_blank">요소의 추가 삭제</a></li>
        </ul>
        <a class="link_download" href="./javascript/javascript.zip">예제파일 다운로드</a>
    </article>    
    
    <article id="sampleCanvas" class="sampleArticle">
    	<h1>canvas</h1>
       	<ul>
    		<li><a href="./html5_canvas/01_canvasSample.html" target="_blank">&lt;canvas&gt; 요소</a></li>
            <li><a href="./html5_canvas/02_rect.html" target="_blank">사각형 그리기</a></li>
            <li><a href="./html5_canvas/03_path.html" target="_blank">선 그리기</a></li>
            <li><a href="./html5_canvas/04_arc.html" target="_blank">호 그리기</a></li>
            <li><a href="./html5_canvas/05_image.html" target="_blank">이미지 삽입</a></li>
            <li><a href="./html5_canvas/06_fillStyle.html" target="_blank">면 색상</a></li>
            <li><a href="./html5_canvas/07_strokeStyle.html" target="_blank">선 색상</a></li>
            <li><a href="./html5_canvas/08_transparency.html" target="_blank">투명도</a></li>
            <li><a href="./html5_canvas/09_lineWidth.html" target="_blank">선 두께</a></li>
            <li><a href="./html5_canvas/10_lineCap.html" target="_blank">선 끝 모양</a></li>
            <li><a href="./html5_canvas/11_lineJoin.html" target="_blank">선 연결 모양</a></li>
            <li><a href="./html5_canvas/12_linearGradient.html" target="_blank">선형 그레이디언트</a></li>
            <li><a href="./html5_canvas/13_radialGradient.html" target="_blank">원형 그레이디언트</a></li>
            <li><a href="./html5_canvas/14_shadow.html" target="_blank">원형 그레이디언트</a></li>
            <li><a href="./html5_canvas/15_text.html" target="_blank">text</a></li>
            <li><a href="./html5_canvas/16_saveRestore.html" target="_blank">상태 저장과 불러오기</a></li>
            <li><a href="./html5_canvas/17_modify.html" target="_blank">좌표 형태 변경</a></li>
            <li><a href="./html5_canvas/18_transform.html" target="_blank">좌표계 형태 일괄 변경</a></li>
            <li><a href="./html5_canvas/19_clip.html" target="_blank">표시 영역 지정</a></li>
            <li><a href="./html5_canvas/20_imageData.html" target="_blank">픽셀 단위 편집</a></li>
            <li><a href="./html5_canvas/21_composite.html" target="_blank">이미지 병합</a></li>
            <li><a href="./html5_canvas/22_urlIncoding.html" target="_blank">이미지로 변환</a></li>
            <li><a href="./html5_canvas/23_animation.html" target="_blank">애니메이션</a></li>
    	</ul>
        <a class="link_download" href="./html5_canvas/html5_canvas.zip">예제파일 다운로드</a>
    </article>
            
    <article id="sampleAPI" class="sampleArticle">
    	<h1>API</h1>
       	<ul>
        	<li><a href="./html5_apis/01_00_manifest.html" target="_blank">cache manifest</a></li>
            <li><a href="./html5_apis/02_localStorage.html" target="_blank">localStorag</a></li>
            <li><a href="./html5_apis/03_geolocation.html" target="_blank">geolocation</a></li>
        </ul>
        <a class="link_download" href="./html5_apis/html5_apis.zip">예제파일 다운로드</a>
    </article>
        
    <article id="sampleSVG" class="sampleArticle">
    	<h1>SVG</h1>
       	<ul>
        	<li><a href="./html5_svg/01_rectagle.html" target="_blank">&lt;rect&gt;</a></li>
            <li><a href="./html5_svg/02_style.html" target="_blank">[style]</a></li>
            <li><a href="./html5_svg/03_circle.html" target="_blank">&lt;circle&gt;</a></li>
            <li><a href="./html5_svg/04_ellipse.html" target="_blank">&lt;ellipse&gt;</a></li>
            <li><a href="./html5_svg/05_line.html" target="_blank">&lt;line&gt;</a></li>
            <li><a href="./html5_svg/06_polygon.html" target="_blank">&lt;polygon&gt;</a></li>
            <li><a href="./html5_svg/07_polyline.html" target="_blank">&lt;polyline&gt;</a></li>
            <li><a href="./html5_svg/08_path.html" target="_blank">&lt;pass&gt;</a></li>
            <li><a href="./html5_svg/09_text.html" target="_blank">&lt;text&gt;</a></li>
            <li><a href="./html5_svg/10_textPath.html" target="_blank">&lt;textPath&gt;</a></li>
            <li><a href="./html5_svg/11_image.html" target="_blank">&lt;image&gt;</a></li>
            <li><a href="./html5_svg/12_transform.html" target="_blank">[transform]</a></li>
            <li><a href="./html5_svg/13_linearGradient.html" target="_blank">&lt;linearGradient&gt;</a></li>
            <li><a href="./html5_svg/14_radialGradient.html" target="_blank">&lt;radialGradient&gt;</a></li>
            <li><a href="./html5_svg/15_fillter.html" target="_blank">&lt;fillter&gt;</a></li>
            <li><a href="./html5_svg/16_g.html" target="_blank">&lt;g&gt;</a></li>
            <li><a href="./html5_svg/17_interaction.html" target="_blank">interaction</a></li>
            <li><a href="./html5_svg/18_animation.html" target="_blank">&lt;animateTransform&gt;</a></li>
    	</ul>
        <a class="link_download" href="./html5_svg/html5_svg.zip">예제파일 다운로드</a>
	</article>
    
    <article id="sampleProject" class="sampleArticle">
    	<h1>Sample Project</h1>
        <ul>
        	<li><a href="./sampleProject/index.html" target="_blank">예제 사이트</a></li>
            <li><a href="http://coforward.com" target="_blank">예제로 사용된 운영중인 사이트</a></li>
    	</ul>
        <a class="link_download" href="./sampleProject/sampleProject.zip">예제파일 다운로드</a>
   </article>                     
<?php		
	$mainContent=ob_get_clean();
	
	//템플릿 호출
	include_once('../template/template_book.php');
?>