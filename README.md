# cinematic-ai-lighting

A Codex skill for turning vague "cinematic lighting" requests into concrete, reusable prompts for AI image and video generation.

This skill is designed for Chinese AIGC workflows where creators need realistic film-style lighting, fill light, volumetric beams, atmosphere, and stable image-to-video keyframes.

## What It Helps With

- Diagnose why an AI image looks flat or lacks filmic depth
- Rewrite prompts for realistic cinematic lighting
- Preserve identity, framing, aspect ratio, clothing, and camera angle during image-to-image edits
- Add motion stability constraints for AI video generation
- Build reusable prompt templates for tools such as Jimeng, Doubao, Liblib, Midjourney-style tools, and other image/video models

## Core Framework

The skill turns "电影感补光" into a physical lighting system:

```text
source -> direction -> atmosphere -> fill -> contrast -> preservation constraints
```

In Chinese:

```text
光源动机 -> 光线方向 -> 空气介质 -> 柔和补光 -> 明暗层次 -> 构图/身份锁定
```

## Install

### Option 1: Copy The Skill Folder

Copy the `cinematic-ai-lighting` folder into your Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -R cinematic-ai-lighting ~/.codex/skills/
```

Restart Codex, then call it with:

```text
使用 cinematic-ai-lighting skill，帮我把这张图改成真实电影感补光。
```

### Option 2: Use The Install Script

From the repository root:

```bash
bash install.sh
```

## Example Usage

```text
使用 cinematic-ai-lighting skill。
场景是夜晚车内人物特写，我想要电影感侧逆光、窗外霓虹、柔和正面补光。
不要改变人物长相、服装、镜头角度和画幅比例。
帮我写一版图生图提示词和避免项。
```

## Example Prompt Pattern

```text
在不改变原图比例、构图、主体身份和镜头角度的前提下，
为画面添加真实电影感布光：
从[画面外/画面内的具体位置]打入[高位侧逆光/侧面主光/顶部光束]，
形成[轮廓光/边缘高光/明暗分离]；
空气中有[轻微烟雾/尘埃/薄雾]，让光束可见但不过度抢戏；
主体正面使用柔和补光，保留五官和关键细节；
整体保持[低调/暖冷对比/柔和高反差/胶片质感]，
阴影有层次，背景与主体分离，光线自然流畅。

避免：改变画幅比例、改变人物身份、过曝、塑料感、脏灰阴影、随机灯光、过强雾气、舞台灯效果。
```

## Repository Structure

```text
cinematic-ai-lighting/
  SKILL.md
  references/
    he-zhiwei-observations.md
examples/
  courtroom.md
  car-interior.md
install.sh
README.md
LICENSE
```

## Notes

This skill was distilled from public creator references and practical AIGC prompt analysis. It is not a transcript or clone of any creator's content. It is a reusable framework for prompt engineering and AI visual direction.

## License

MIT
