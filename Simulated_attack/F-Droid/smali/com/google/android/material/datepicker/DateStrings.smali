.class abstract Lcom/google/android/material/datepicker/DateStrings;
.super Ljava/lang/Object;
.source "DateStrings.java"


# direct methods
.method static getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;
    .locals 2

    .line 224
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_today_description:I

    .line 228
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, p2

    .line 227
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p4, :cond_1

    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_start_date_description:I

    .line 232
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, p2

    .line 231
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p5, :cond_2

    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_end_date_description:I

    .line 235
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, p2

    .line 234
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method static getMonthDayOfWeekDay(J)Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 93
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/DateStrings$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .locals 1

    .line 116
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->isDateWithinCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getYearContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 248
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_current_year_description:I

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 249
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_year_description:I

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 252
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getYearMonth(J)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x2024

    const/4 v1, 0x0

    .line 42
    invoke-static {v1, p0, p1, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 104
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/DateStrings$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isDateWithinCurrentYear(J)Z
    .locals 2

    .line 148
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 150
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 151
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
