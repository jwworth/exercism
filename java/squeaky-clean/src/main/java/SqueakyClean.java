class SqueakyClean {
    static String clean(String identifier) {
        StringBuilder sb = new StringBuilder();

        boolean capitalizeNext = false;
        for (char ch : identifier.toCharArray()) {

            if (capitalizeNext) {
                ch = Character.toUpperCase(ch);
                capitalizeNext = false;
            }

            if (ch == ' ') {
                sb.append('_');
            } else if (ch == '-') {
                capitalizeNext = true;
            } else if (Character.isLetterOrDigit(ch)) {
                sb.append(convertToLeet(ch));
            }

        }

        return sb.toString();
    }

    private static char convertToLeet(char ch) {
        return switch (ch) {
            case '3' -> 'e';
            case '0' -> 'o';
            case '4' -> 'a';
            case '1' -> 'l';
            case '7' -> 't';
            default -> ch;
        };
    }
}
