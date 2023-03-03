package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "words")
public class Word {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "polish_word", nullable = false)
    private String polishWord;

    @Column(name = "english_word")
    private String englishWord;

    @Column(name = "spanish_word")
    private String spanishWord;

    @Column(name = "category", nullable = false)
    private String category;

    @ManyToOne(cascade = CascadeType.ALL, optional = false)
    @JoinColumn(name = "card_id", nullable = false)
    private Card cardId;
}
