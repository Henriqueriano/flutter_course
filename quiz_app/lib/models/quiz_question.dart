class QuizQuestion {
				final String text;
				final List<String> answers;

				const QuizQuestion(this.text, this.answers);

				List<String> getShuffledAnswers() {
								final List<String> bucket = List.of(answers);
								bucket.shuffle();
								return bucket;
				}
}
