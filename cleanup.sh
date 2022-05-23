#!/bin/bash
rm -rf ./elpa/ ./auto-save-list ./config.el ./recentf
git checkout -- init.el
git clean -xdf
