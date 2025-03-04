.class public abstract Lio/ktor/util/date/DateJvmKt;
.super Ljava/lang/Object;
.source "DateJvm.kt"


# static fields
.field private static final GMT_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT"

    .line 10
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lio/ktor/util/date/DateJvmKt;->GMT_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public static final GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;
    .locals 2

    sget-object v0, Lio/ktor/util/date/DateJvmKt;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 18
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lio/ktor/util/date/DateJvmKt;->toDate(Ljava/util/Calendar;Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic GMTDate$default(Ljava/lang/Long;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 17
    :cond_0
    invoke-static {p0}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object p0

    return-object p0
.end method

.method public static final toDate(Ljava/util/Calendar;Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p1, 0xf

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    const/16 v0, 0xd

    .line 45
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v0, 0xc

    .line 46
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v0, 0xb

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x7

    .line 52
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v5, 0x5

    add-int/2addr v1, v5

    rem-int/2addr v1, v0

    .line 53
    sget-object v0, Lio/ktor/util/date/WeekDay;->Companion:Lio/ktor/util/date/WeekDay$Companion;

    invoke-virtual {v0, v1}, Lio/ktor/util/date/WeekDay$Companion;->from(I)Lio/ktor/util/date/WeekDay;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v1, 0x6

    .line 56
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 58
    sget-object v1, Lio/ktor/util/date/Month;->Companion:Lio/ktor/util/date/Month$Companion;

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lio/ktor/util/date/Month$Companion;->from(I)Lio/ktor/util/date/Month;

    move-result-object v8

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 61
    new-instance v12, Lio/ktor/util/date/GMTDate;

    .line 65
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    int-to-long p0, p1

    add-long/2addr v10, p0

    move-object v1, v12

    move-object v5, v0

    .line 61
    invoke-direct/range {v1 .. v11}, Lio/ktor/util/date/GMTDate;-><init>(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)V

    return-object v12
.end method
