#!/usr/bin/env bash

cp netbeans-url-handler /usr/bin/netbeans-url-handler
desktop-file-install netbeans-url-handler.desktop
update-desktop-database
