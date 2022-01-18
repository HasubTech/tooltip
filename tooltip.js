    <script>//<![CDATA[
        $("[title]").mouseover(function () {
            $this_tool_tip_elm = $(this);
            tool_tip_title = $this_tool_tip_elm.attr("title");
            $this_tool_tip_elm.attr("data-hasub_title", tool_tip_title);
            $this_tool_tip_elm.removeAttr("title");
            $("body").prepend(`<div id="hasubtech_tooltip">${tool_tip_title}</div>`);
            $this_tool_tip_elm.mousemove(function (event) {
                $("#hasubtech_tooltip").css("top", event.clientY + 10).css("left", event.clientX);
            });
            $this_tool_tip_elm.mouseout(function () {
                $this_tool_tip_elm.attr("title", $(this).attr("data-hasub_title"));
                $this_tool_tip_elm.removeAttr("data-hasub_title");
                $("#hasubtech_tooltip").remove();
            });
        });
    //]]></script>
