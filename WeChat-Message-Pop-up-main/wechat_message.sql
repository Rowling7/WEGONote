/*
 Navicat Premium Data Transfer

 Source Server         : sqlite3
 Source Server Type    : SQLite
 Source Server Version : 3035005
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005
 File Encoding         : 65001

 Date: 25/12/2025 15:39:45
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for wechat_message
-- ----------------------------
DROP TABLE IF EXISTS "wechat_message";
CREATE TABLE "wechat_message" (
  "id" INTEGER NOT NULL,
  "person" TEXT,
  "message" TEXT,
  "date" DATE,
  "create_date" DATE,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Records of wechat_message
-- ----------------------------
INSERT INTO "wechat_message" VALUES (1, '八条躺狗', '1条未读 罗礼串: @l 又摸鱼 15:34消息免打扰 ', '2025-12-25 15:39:00', NULL);

PRAGMA foreign_keys = true;
