declare module '@apiverve/initialismgenerator' {
  export interface initialismgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface initialismgeneratorResponse {
    status: string;
    error: string | null;
    data: InitialismGeneratorData;
    code?: number;
  }


  interface InitialismGeneratorData {
      initialism: string;
      phrase:     string;
      wordCount:  number;
      words:      string[];
  }

  export default class initialismgeneratorWrapper {
    constructor(options: initialismgeneratorOptions);

    execute(callback: (error: any, data: initialismgeneratorResponse | null) => void): Promise<initialismgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: initialismgeneratorResponse | null) => void): Promise<initialismgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<initialismgeneratorResponse>;
  }
}
