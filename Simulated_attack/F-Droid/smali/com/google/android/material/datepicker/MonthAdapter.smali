.class Lcom/google/android/material/datepicker/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# static fields
.field private static final MAXIMUM_GRID_CELLS:I

.field static final MAXIMUM_WEEKS:I


# instance fields
.field final calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field final month:Lcom/google/android/material/datepicker/Month;

.field private previouslySelectedDates:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    .line 51
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 52
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iput-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 79
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    return-void
.end method

.method private getDayContentDescription(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .line 245
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isToday(J)Z

    move-result v3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isStartOfRange(J)Z

    move-result v4

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isEndOfRange(J)Z

    move-result v5

    move-object v0, p1

    move-wide v1, p2

    .line 244
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/datepicker/DateStrings;->getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initializeStyles(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    :cond_0
    return-void
.end method

.method private isSelected(J)Z
    .locals 0

    const/4 p1, 0x0

    .line 273
    throw p1
.end method

.method private isToday(J)Z
    .locals 2

    .line 249
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateSelectedState(Landroid/widget/TextView;JI)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 189
    invoke-direct {p0, p4, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->getDayContentDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p4

    .line 190
    invoke-virtual {p1, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 193
    invoke-virtual {p4}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p4, 0x1

    .line 196
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isSelected(J)Z

    move-result p4

    .line 198
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 200
    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isToday(J)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 202
    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 204
    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 207
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 208
    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 239
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;)V

    return-void
.end method

.method private updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 3

    .line 171
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 173
    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/datepicker/Month;->getDayOfMonth(J)I

    move-result v0

    .line 177
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 174
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    :cond_0
    return-void
.end method


# virtual methods
.method dayToPosition(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 323
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method firstPositionInMonth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 295
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth(I)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 0
    sget v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Long;
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->positionToDay(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 107
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 5

    .line 125
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->initializeStyles(Landroid/content/Context;)V

    .line 126
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 128
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_day:I

    .line 129
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_2

    iget-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 133
    iget v2, p3, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    if-lt p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 139
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%d"

    invoke-static {p3, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p2, 0x8

    .line 134
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p2, -0x1

    .line 146
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 150
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method isEndOfRange(J)Z
    .locals 0

    const/4 p1, 0x0

    .line 264
    throw p1
.end method

.method isStartOfRange(J)Z
    .locals 0

    const/4 p1, 0x0

    .line 254
    throw p1
.end method

.method lastPositionInMonth()I
    .locals 2

    .line 306
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method positionToDay(I)I
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public updateSelectedStates(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    .line 156
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method withinMonth(I)Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
