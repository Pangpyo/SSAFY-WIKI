package com.bdos.ssafywiki.template.dto;

import lombok.*;

public class TemplateDto {

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @ToString
    @Builder
    public static class Post {
        private String title;
        private String content;
        private boolean secret;
    }

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @ToString
    @Builder
    public static class Detail {
        private String title;
        private String content;
        private boolean secret;
    }
}
