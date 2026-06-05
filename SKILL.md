---
name: cinematic-ai-lighting
description: Use when creating, diagnosing, or improving AI-generated images or videos that need cinematic lighting, realistic fill light, filmic atmosphere, image-to-video keyframes, or prompt structure for AIGC visuals. Especially useful when the user asks for 电影感, 补光, 布光, 光束, 层次感, 氛围感, AI视频, 生图提示词, 首尾帧, or wants to make AI visuals less flat and more like a shot from a movie.
---

# Cinematic AI Lighting

Use this skill to turn vague "电影感" requests into concrete, controllable lighting prompts and review criteria for AI image/video generation.

## Core Principle

Do not rely on the phrase "电影感布光" alone. Translate it into visible lighting behavior:

1. A motivated light source: where the light appears to come from in the scene.
2. A directional key/rim/back light: where it enters the frame and which side of the subject it shapes.
3. Atmospheric volume: haze, dust, mist, smoke, or air particles that make beams visible.
4. Controlled fill: a soft front or side fill that keeps important facial/detail areas readable.
5. Contrast hierarchy: bright accents, readable midtones, and intentional shadow areas.
6. Composition lock: keep the original aspect ratio, framing, subject identity, and camera angle unless the user asks to change them.

## Fast Workflow

When improving an existing image/keyframe:

1. Identify the scene type: courtroom, street night, car interior, room window light, product close-up, etc.
2. Name the likely practical source: window, lamp, neon sign, doorway, projector, fire, streetlight, monitor, skylight.
3. Choose one dominant direction:
   - high side-back light for silhouette and rim separation
   - side key light for facial modeling
   - top shaft light for dramatic space
   - low practical glow for motivated ambience
4. Add atmosphere only if it fits the location; use haze/dust/mist/smoke to reveal beams.
5. Add soft fill sparingly so the image is not underexposed or muddy.
6. Preserve the original shot language: aspect ratio, subject position, lens feeling, camera height, and pose.
7. Generate a revised prompt and a negative prompt / avoid list.

## Prompt Template

Use Chinese or bilingual wording depending on the user's tool. Keep the prompt compact but physically specific.

```text
在不改变原图比例、构图、主体身份和镜头角度的前提下，
为画面添加电影感布光：
从[画面外/画面内的具体位置]打入[高位侧逆光/侧面主光/顶部光束]，
形成[轮廓光/边缘高光/明暗分离]；
空气中有[轻微烟雾/尘埃/薄雾]，让光束可见但不过度抢戏；
主体正面使用柔和补光，保留五官和关键细节；
整体保持[低调/暖冷对比/柔和高反差/胶片质感]，
阴影有层次，背景与主体分离，光线自然流畅。

避免：改变画幅比例、改变人物身份、过曝、塑料感、脏灰阴影、随机灯光、过强雾气、舞台灯效果。
```

## Lighting Building Blocks

Use these phrases as modular pieces, not as a mandatory dump.

- `画面外的高位侧逆光`: gives rim, separation, and cinematic depth.
- `体积光束`: makes light visible through haze, dust, smoke, or mist.
- `柔和正面补光`: protects facial readability without flattening contrast.
- `窗外斜射光`: motivated source for rooms, courts, offices, trains, and cafes.
- `背景 practical light`: lamp, neon, screen, candle, fire, or doorway glow that justifies color and direction.
- `冷暖分离`: cool ambient shadows plus warm key/practical, or the reverse.
- `低调高反差`: useful for drama, suspense, courtroom, noir, cyberpunk, and night scenes.
- `保留暗部细节`: prevents crushed blacks and muddy AI output.

## Diagnosis Checklist

When a result still lacks filmic lighting, check in this order:

1. Is the light source motivated, or is the image just globally brighter?
2. Is there a clear direction, or are all surfaces evenly lit?
3. Does the subject separate from the background by rim, contrast, or color?
4. Is the atmosphere visible but not fogging the whole frame?
5. Is the face/detail readable without destroying shadow?
6. Did the model alter the composition, ratio, pose, or identity while adding light?

## Output Pattern

For most user requests, return:

- A short diagnosis of what is missing.
- A revised prompt.
- An avoid list.
- Optional: 2-3 variants by mood or light source.

If the user is making an AI video, add motion constraints:

```text
镜头运动轻微、稳定、自然；光束方向保持一致；人物身份和服装不漂移；阴影随镜头移动保持连续；不要新增无关光源。
```

## Source Notes

For provenance and observed examples, see [references/he-zhiwei-observations.md](references/he-zhiwei-observations.md) when the user asks where this framework came from or wants the Douyin/Bilibili observation summary.
