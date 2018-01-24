<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2014 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

<!--{strip}-->
    <div class="block_outer">
        <div id="news_area">
            <h2><img src="<!--{$TPL_URLPATH}-->img/title/tit_bloc_news.png" alt="新着情報" /><span class="rss"><a href="<!--{$smarty.const.ROOT_URLPATH}-->rss/<!--{$smarty.const.DIR_INDEX_PATH}-->" target="_blank"><img src="<!--{$TPL_URLPATH}-->img/button/btn_rss.jpg" alt="RSS" /></a></span></h2>
            <div class="block_body">
                <div class="news_contents">
                <!--{section name=data loop=$arrNews}-->
                    <!--{if $arrNews[data].news_date_start<date('Y/m/d H:i:s') && $arrNews[data].news_date_end>date('Y/m/d H:i:s')}-->
                        <!--{assign var="date_array" value="-"|explode:$arrNews[data].cast_news_date}-->
                        <dl class="newslist">
                            <dt><!--{$date_array[0]}-->年<!--{$date_array[1]}-->月<!--{$date_array[2]}-->日</dt>
                            <dt>
                                <a
                                <!--{if $arrNews[data].news_url}--> href="<!--{$arrNews[data].news_url}-->" <!--{if $arrNews[data].link_method eq "2"}--> target="_blank"
                                <!--{/if}-->
                                <!--{/if}-->
                                >
                                <!--{$arrNews[data].news_title|h|nl2br}--></a>
                            </dt>
                            <dt>表示期間　<!--{$arrNews[data].news_date_start|date_format:"%Y/%m/%d"}-->～<!--{$arrNews[data].news_date_end|date_format:"%Y/%m/%d"}--></dt>
                            <dd class="mini"><!--{$arrNews[data].news_comment|h|nl2br}--></dd>
                        </dl>
                    <!--{/if}-->
                <!--{/section}-->
                </div>
            </div>
        </div>
    </div>
<!--{/strip}-->