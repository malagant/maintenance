FROM busybox
LABEL maintainer="Michael Johann"
COPY html/index.html entrypoint.sh /
ENV MESSAGE="Sorry for the inconvenience but we\&rsquo;re performing some maintenance at the moment. If you need to you can always <a href=\"mailto:{{mail}}\">{{contact}}<\/a>, otherwise we\&rsquo;ll be back online in the next days!"
ENV HEADLINE="We\&rsquo;ll be back soon!"
ENV MAIL_ADDRESS=mdx@mg.telekom.de
ENV PORT=8080
ENV TEAM_NAME="The MDX Team"
ENV TITLE="Site Maintenance"
ENV LINK_COLOR="#E10075"
ENV THEME="Light"
ENV RESPONSE_CODE="503 Service Unavailable"
ENV CONTACT_LINK="contact us"
ENTRYPOINT [ "./entrypoint.sh" ]
