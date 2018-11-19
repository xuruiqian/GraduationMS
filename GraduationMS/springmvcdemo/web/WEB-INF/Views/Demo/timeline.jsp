<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="subPage.definition">
    <tiles:putAttribute name="title" value="example index.jsp"/>
    <tiles:putAttribute name="body">
        <div class='container-fluid'>
            <div class='row-fluid' id='content-wrapper'>
                <div class='span12'>
                    <div class='row-fluid'>
                        <div class='span12'>
                            <div class='page-header'>
                                <h3 class='pull-left'>
                                    <i class='icon-time'></i>
                                    <span>Timeline</span>
                                </h3>
                                <div class='pull-right'>
                                    <ul class='breadcrumb'>
                                        <li>
                                            <a href="index.html"><i class='icon-bar-chart'></i>
                                            </a>
                                        </li>
                                        <li class='separator'>
                                            <i class='icon-angle-right'></i>
                                        </li>
                                        <li>Example pages</li>
                                        <li class='separator'>
                                            <i class='icon-angle-right'></i>
                                        </li>
                                        <li class='active'>Timeline</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid timeline'>
                        <div class='span12'>
                            <ol class='unstyled'>
                                <li>
                                    <div class='icon purple-background'>
                                        <i class='icon-plane'></i>
                                    </div>
                                    <div class='title'>
                                        Vacation
                                        <small class='muted'>1 minute ago</small>
                                    </div>
                                    <div class='content'>
                                        Ut cum aut ea provident sed asperiores ducimus officia rerum nobis cumque atque
                                        doloremque iusto sint quibusdam deserunt vel quaerat totam a magnam repudiandae
                                        molestias rerum veritatis perferendis dolores velit tempore adipisci iure quia
                                        odio omnis in et aut maxime sunt voluptatem necessitatibus qui.
                                    </div>
                                </li>
                                <li>
                                    <div class='icon green-background'>
                                        <i class='icon-picture'></i>
                                    </div>
                                    <div class='title'>
                                        <a href="#" class="muted">Vernon Hessel</a>
                                        uploaded new photos
                                        <small class='muted'>10 minutes ago</small>
                                    </div>
                                    <div class='content'>
                                        <img alt="143249" src="http://placehold.it/140x70/dce1e5/143249"/>
                                        <img alt="143249" src="http://placehold.it/140x70/dce1e5/143249"/>
                                        <img alt="143249" src="http://placehold.it/140x70/dce1e5/143249"/>
                                        <img alt="143249" src="http://placehold.it/140x70/dce1e5/143249"/>
                                    </div>
                                </li>
                                <li>
                                    <div class='icon orange-background'>
                                        <i class='icon-comments'></i>
                                    </div>
                                    <div class='title'>
                                        <a href="#" class="muted">Adaline Schmitt</a>
                                        sent comment
                                        <small class='muted'>1 hour ago</small>
                                    </div>
                                    <div class='content'>
                                        Consequuntur sit blanditiis animi deleniti rerum debitis in reiciendis similique
                                        ullam iusto et numquam omnis et id commodi hic sint eveniet.
                                    </div>
                                </li>
                                <li>
                                    <div class='icon red-background'>
                                        <i class='icon-facetime-video'></i>
                                    </div>
                                    <div class='title'>
                                        <a href="#" class="muted">Lowell Shields</a>
                                        shared video
                                        <small class='muted'>2 weeks ago</small>
                                    </div>
                                    <div class='content'>
                                        <iframe allowfullscreen='' src='http://www.youtube.com/embed/VyG1rk1XgT4'
                                                style='width:560px;height:315px;frameborder:0;'></iframe>
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>