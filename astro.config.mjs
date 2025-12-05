import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  site: 'https://ootvt-astro.pages.dev', // 替换为您的 Cloudflare Pages 域名
  
  markdown: {
    shikiConfig: {
      // 配置双主题
      // Astro 会自动生成 CSS 变量：--shiki-light 和 --shiki-dark
      themes: {
        light: 'vitesse-light',
        dark: 'dracula',
      },
      // 启用自动换行，防止代码太长出现横向滚动条
      wrap: true,
    },
  },
});