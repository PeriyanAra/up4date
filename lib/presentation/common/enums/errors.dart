enum Errors {
  verificationError('validation_error');

  final String translationKey;

  const Errors(this.translationKey);
}